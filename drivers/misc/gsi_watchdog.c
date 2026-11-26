// SPDX-License-Identifier: GPL-2.0
/*
 * GSI boot watchdog.
 *
 * If Android never reaches sys.boot_completed (e.g. it hangs on the OEM
 * logo), force a reboot into recovery after gsi_reboot_sec seconds so that
 * pstore/console-ramoops keeps the last kernel log of the failed boot.
 *
 * init cancels the timer by writing anything to /proc/gsi_watchdog_cancel
 * once boot_completed is set.
 */

#include <linux/atomic.h>
#include <linux/init.h>
#include <linux/jiffies.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/proc_fs.h>
#include <linux/reboot.h>
#include <linux/uaccess.h>
#include <linux/workqueue.h>

static int gsi_reboot_sec = 120;
core_param(gsi_reboot_sec, gsi_reboot_sec, int, 0644);

static struct delayed_work gsi_watchdog_work;
static atomic_t gsi_watchdog_armed = ATOMIC_INIT(1);

static void gsi_watchdog_fn(struct work_struct *work)
{
	if (!atomic_read(&gsi_watchdog_armed))
		return;

	/* Panic (rather than a clean restart) so pstore keeps the log. */
	panic("gsi: boot did not complete within %ds", gsi_reboot_sec);
}

static ssize_t gsi_watchdog_cancel_write(struct file *file,
					 const char __user *buf, size_t count,
					 loff_t *ppos)
{
	atomic_set(&gsi_watchdog_armed, 0);
	cancel_delayed_work_sync(&gsi_watchdog_work);
	pr_info("gsi: auto-reboot-to-recovery cancelled\n");
	return count;
}

static const struct file_operations gsi_watchdog_fops = {
	.write = gsi_watchdog_cancel_write,
};

static int __init gsi_watchdog_init(void)
{
	proc_create("gsi_watchdog_cancel", 0200, NULL, &gsi_watchdog_fops);

	if (gsi_reboot_sec > 0) {
		INIT_DELAYED_WORK(&gsi_watchdog_work, gsi_watchdog_fn);
		schedule_delayed_work(&gsi_watchdog_work,
				      gsi_reboot_sec * HZ);
		pr_info("gsi: auto-reboot-to-recovery armed (%ds)\n",
			gsi_reboot_sec);
	}
	return 0;
}
late_initcall(gsi_watchdog_init);
