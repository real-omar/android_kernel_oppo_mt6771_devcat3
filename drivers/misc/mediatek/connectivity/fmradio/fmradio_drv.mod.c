#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x34a5c49b, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x6ef57895, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_chipid_query) },
	{ 0xac8387ca, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_msgcb_reg) },
	{ 0xb095001c, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_register_event_cb) },
	{ 0x7ef22447, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_receive_data) },
	{ 0xe471e19a, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_send_data) },
	{ 0xe7dbebdf, __VMLINUX_SYMBOL_STR(cpu_hwcaps) },
	{ 0x8d15114a, __VMLINUX_SYMBOL_STR(__release_region) },
	{ 0x45a55ec8, __VMLINUX_SYMBOL_STR(__iounmap) },
	{ 0xf24b3dfe, __VMLINUX_SYMBOL_STR(__ioremap) },
	{ 0x9dcedeaa, __VMLINUX_SYMBOL_STR(cpu_hwcap_keys) },
	{ 0x52da2b65, __VMLINUX_SYMBOL_STR(arm64_const_caps_ready) },
	{ 0x5e25804, __VMLINUX_SYMBOL_STR(__request_region) },
	{ 0xc364ae22, __VMLINUX_SYMBOL_STR(iomem_resource) },
	{ 0x45452cf0, __VMLINUX_SYMBOL_STR(___ratelimit) },
	{ 0xa202a8e5, __VMLINUX_SYMBOL_STR(kmalloc_order_trace) },
	{ 0x8c03d20c, __VMLINUX_SYMBOL_STR(destroy_workqueue) },
	{ 0x2e0d2f7f, __VMLINUX_SYMBOL_STR(queue_work_on) },
	{ 0x43a53735, __VMLINUX_SYMBOL_STR(__alloc_workqueue_key) },
	{ 0x5c2e3421, __VMLINUX_SYMBOL_STR(del_timer) },
	{ 0xa38caae0, __VMLINUX_SYMBOL_STR(mod_timer) },
	{ 0x5ee52022, __VMLINUX_SYMBOL_STR(init_timer_key) },
	{ 0xabbbd444, __VMLINUX_SYMBOL_STR(_raw_spin_unlock_bh) },
	{ 0xf6f0ffed, __VMLINUX_SYMBOL_STR(_raw_spin_lock_bh) },
	{ 0x324b3877, __VMLINUX_SYMBOL_STR(up) },
	{ 0xcc5005fe, __VMLINUX_SYMBOL_STR(msleep_interruptible) },
	{ 0x8974c179, __VMLINUX_SYMBOL_STR(down_trylock) },
	{ 0xfa91eb38, __VMLINUX_SYMBOL_STR(down_interruptible) },
	{ 0x1000e51, __VMLINUX_SYMBOL_STR(schedule) },
	{ 0x3c578bac, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x41acaf3c, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0x8ddd8aad, __VMLINUX_SYMBOL_STR(schedule_timeout) },
	{ 0x7c580e7, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0xfe487975, __VMLINUX_SYMBOL_STR(init_wait_entry) },
	{ 0x9e7d6bd0, __VMLINUX_SYMBOL_STR(__udelay) },
	{ 0xf9a482f9, __VMLINUX_SYMBOL_STR(msleep) },
	{ 0x405c120e, __VMLINUX_SYMBOL_STR(wait_for_completion) },
	{ 0x4b03e612, __VMLINUX_SYMBOL_STR(wake_up_process) },
	{ 0x7a7b92eb, __VMLINUX_SYMBOL_STR(kthread_create_on_node) },
	{ 0xc2b00af2, __VMLINUX_SYMBOL_STR(__init_waitqueue_head) },
	{ 0x3336736f, __VMLINUX_SYMBOL_STR(complete) },
	{ 0xd8ccb849, __VMLINUX_SYMBOL_STR(release_firmware) },
	{ 0x5534aa73, __VMLINUX_SYMBOL_STR(request_firmware) },
	{ 0x4829a47e, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0x5a921311, __VMLINUX_SYMBOL_STR(strncmp) },
	{ 0xe2d5255a, __VMLINUX_SYMBOL_STR(strcmp) },
	{ 0x37befc70, __VMLINUX_SYMBOL_STR(jiffies_to_msecs) },
	{ 0x526c3a6c, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0xa46f2f1b, __VMLINUX_SYMBOL_STR(kstrtouint) },
	{ 0xd2b09ce5, __VMLINUX_SYMBOL_STR(__kmalloc) },
	{ 0x88db9f48, __VMLINUX_SYMBOL_STR(__check_object_size) },
	{ 0xb35dea8f, __VMLINUX_SYMBOL_STR(__arch_copy_to_user) },
	{ 0x7d52bb76, __VMLINUX_SYMBOL_STR(gpiod_set_raw_value) },
	{ 0x84bc974b, __VMLINUX_SYMBOL_STR(__arch_copy_from_user) },
	{ 0xc0d667d6, __VMLINUX_SYMBOL_STR(proc_create) },
	{ 0x82f1d010, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x49e0881c, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x3f540fc9, __VMLINUX_SYMBOL_STR(remove_proc_entry) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x96fddaf4, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0x5d620303, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0x9c9d8d75, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0x6fbaace4, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x819b4908, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0x29537c9e, __VMLINUX_SYMBOL_STR(alloc_chrdev_region) },
	{ 0x9ab45875, __VMLINUX_SYMBOL_STR(gpiod_direction_output_raw) },
	{ 0x4a4b4c86, __VMLINUX_SYMBOL_STR(gpio_to_desc) },
	{ 0x47229b5c, __VMLINUX_SYMBOL_STR(gpio_request) },
	{ 0xc9cf8cec, __VMLINUX_SYMBOL_STR(of_property_read_variable_u32_array) },
	{ 0xc7b09b6d, __VMLINUX_SYMBOL_STR(of_get_child_by_name) },
	{ 0x89db81e8, __VMLINUX_SYMBOL_STR(of_parse_phandle) },
	{ 0x8385f6b7, __VMLINUX_SYMBOL_STR(of_find_compatible_node) },
	{ 0x4049d374, __VMLINUX_SYMBOL_STR(platform_driver_unregister) },
	{ 0xfe990052, __VMLINUX_SYMBOL_STR(gpio_free) },
	{ 0xa7852a12, __VMLINUX_SYMBOL_STR(platform_device_unregister) },
	{ 0x76160501, __VMLINUX_SYMBOL_STR(__platform_driver_register) },
	{ 0x569841a3, __VMLINUX_SYMBOL_STR(platform_device_put) },
	{ 0x60642e40, __VMLINUX_SYMBOL_STR(platform_device_add) },
	{ 0x8269cc00, __VMLINUX_SYMBOL_STR(platform_device_alloc) },
	{ 0x37a0cba, __VMLINUX_SYMBOL_STR(kfree) },
	{ 0x98cf60b3, __VMLINUX_SYMBOL_STR(strlen) },
	{ 0x91715312, __VMLINUX_SYMBOL_STR(sprintf) },
	{ 0x999e8297, __VMLINUX_SYMBOL_STR(vfree) },
	{ 0xd6ee688f, __VMLINUX_SYMBOL_STR(vmalloc) },
	{ 0xd9b4c129, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_ic_info_get) },
	{ 0xd977b15b, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_off) },
	{ 0x7d6e061e, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_on) },
	{ 0xc45048d7, __VMLINUX_SYMBOL_STR(kmalloc_debug_caches) },
	{ 0xd0ce3433, __VMLINUX_SYMBOL_STR(kmem_cache_alloc_trace) },
	{ 0x6cec7559, __VMLINUX_SYMBOL_STR(kmalloc_caches) },
	{ 0xa1ed0f26, __VMLINUX_SYMBOL_STR(kmalloc_debug_enable) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x8f678b07, __VMLINUX_SYMBOL_STR(__stack_chk_guard) },
	{ 0x985558a1, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xdcb764ad, __VMLINUX_SYMBOL_STR(memset) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=wmt_drv";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
