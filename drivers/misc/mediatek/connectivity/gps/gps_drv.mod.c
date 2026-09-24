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
	{ 0x497a924e, __VMLINUX_SYMBOL_STR(param_ops_uint) },
	{ 0x4829a47e, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0x8458fe11, __VMLINUX_SYMBOL_STR(wakeup_source_unregister) },
	{ 0x8294d77, __VMLINUX_SYMBOL_STR(wakeup_source_register) },
	{ 0x82f1d010, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x96fddaf4, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0x5d620303, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0x9c9d8d75, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0x49e0881c, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x6fbaace4, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x819b4908, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0xd8e484f0, __VMLINUX_SYMBOL_STR(register_chrdev_region) },
	{ 0x3c578bac, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x8c78a087, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_msgcb_unreg) },
	{ 0xd977b15b, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_off) },
	{ 0xb095001c, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_register_event_cb) },
	{ 0xbd9c94a3, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_is_ready) },
	{ 0xac8387ca, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_msgcb_reg) },
	{ 0x7d6e061e, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_on) },
	{ 0x33fc5611, __VMLINUX_SYMBOL_STR(__pm_stay_awake) },
	{ 0x210c94ae, __VMLINUX_SYMBOL_STR(mtk_wmt_get_gps_lna_pin_num) },
	{ 0xd879e4b4, __VMLINUX_SYMBOL_STR(__pm_relax) },
	{ 0xc6e7b645, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_assert) },
	{ 0x20744741, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_co_clock_flag_get) },
	{ 0xd9b4c129, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_ic_info_get) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x7584d268, __VMLINUX_SYMBOL_STR(__dynamic_pr_debug) },
	{ 0x1e047854, __VMLINUX_SYMBOL_STR(warn_slowpath_fmt) },
	{ 0xb35dea8f, __VMLINUX_SYMBOL_STR(__arch_copy_to_user) },
	{ 0x41acaf3c, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0x1000e51, __VMLINUX_SYMBOL_STR(schedule) },
	{ 0x7c580e7, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0xfe487975, __VMLINUX_SYMBOL_STR(init_wait_entry) },
	{ 0x7ef22447, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_receive_data) },
	{ 0x8f678b07, __VMLINUX_SYMBOL_STR(__stack_chk_guard) },
	{ 0xdcb764ad, __VMLINUX_SYMBOL_STR(memset) },
	{ 0x324b3877, __VMLINUX_SYMBOL_STR(up) },
	{ 0x985558a1, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xe471e19a, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_send_data) },
	{ 0x84bc974b, __VMLINUX_SYMBOL_STR(__arch_copy_from_user) },
	{ 0x88db9f48, __VMLINUX_SYMBOL_STR(__check_object_size) },
	{ 0x360ff19f, __VMLINUX_SYMBOL_STR(down) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=wmt_drv";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
