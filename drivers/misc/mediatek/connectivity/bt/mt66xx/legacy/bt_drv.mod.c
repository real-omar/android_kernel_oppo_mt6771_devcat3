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
	{ 0x55a1ed37, __VMLINUX_SYMBOL_STR(proc_remove) },
	{ 0x4d16cc9d, __VMLINUX_SYMBOL_STR(__mutex_init) },
	{ 0xc0d667d6, __VMLINUX_SYMBOL_STR(proc_create) },
	{ 0xbe69f92a, __VMLINUX_SYMBOL_STR(wait_for_completion_timeout) },
	{ 0x85df9b6c, __VMLINUX_SYMBOL_STR(strsep) },
	{ 0x3336736f, __VMLINUX_SYMBOL_STR(complete) },
	{ 0x1b17e06c, __VMLINUX_SYMBOL_STR(kstrtoll) },
	{ 0xf285ceda, __VMLINUX_SYMBOL_STR(mutex_unlock) },
	{ 0x8ae3658d, __VMLINUX_SYMBOL_STR(mutex_lock_killable) },
	{ 0xe7dbebdf, __VMLINUX_SYMBOL_STR(cpu_hwcaps) },
	{ 0x45a55ec8, __VMLINUX_SYMBOL_STR(__iounmap) },
	{ 0xf24b3dfe, __VMLINUX_SYMBOL_STR(__ioremap) },
	{ 0x9dcedeaa, __VMLINUX_SYMBOL_STR(cpu_hwcap_keys) },
	{ 0x52da2b65, __VMLINUX_SYMBOL_STR(arm64_const_caps_ready) },
	{ 0x497a924e, __VMLINUX_SYMBOL_STR(param_ops_uint) },
	{ 0x3c578bac, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x8ef82f48, __VMLINUX_SYMBOL_STR(pm_wakeup_ws_event) },
	{ 0x8458fe11, __VMLINUX_SYMBOL_STR(wakeup_source_unregister) },
	{ 0x82f1d010, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x96fddaf4, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0x5d620303, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0x9c9d8d75, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0x49e0881c, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x6fbaace4, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x819b4908, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0xd8e484f0, __VMLINUX_SYMBOL_STR(register_chrdev_region) },
	{ 0x8294d77, __VMLINUX_SYMBOL_STR(wakeup_source_register) },
	{ 0xc2b00af2, __VMLINUX_SYMBOL_STR(__init_waitqueue_head) },
	{ 0x8c78a087, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_msgcb_unreg) },
	{ 0xb12cbacb, __VMLINUX_SYMBOL_STR(fb_unregister_client) },
	{ 0xd977b15b, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_off) },
	{ 0x80d68d3e, __VMLINUX_SYMBOL_STR(fb_register_client) },
	{ 0xac8387ca, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_msgcb_reg) },
	{ 0xb095001c, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_register_event_cb) },
	{ 0xcd5cff60, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_set_bluez) },
	{ 0xbd9c94a3, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_is_ready) },
	{ 0x7d6e061e, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_on) },
	{ 0x14734572, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_psm_ctrl) },
	{ 0xc6e7b645, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_assert) },
	{ 0xd9b4c129, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_ic_info_get) },
	{ 0x1e047854, __VMLINUX_SYMBOL_STR(warn_slowpath_fmt) },
	{ 0x7ef22447, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_receive_data) },
	{ 0x1000e51, __VMLINUX_SYMBOL_STR(schedule) },
	{ 0x7c580e7, __VMLINUX_SYMBOL_STR(prepare_to_wait_event) },
	{ 0xfe487975, __VMLINUX_SYMBOL_STR(init_wait_entry) },
	{ 0x41acaf3c, __VMLINUX_SYMBOL_STR(finish_wait) },
	{ 0xb35dea8f, __VMLINUX_SYMBOL_STR(__arch_copy_to_user) },
	{ 0x4829a47e, __VMLINUX_SYMBOL_STR(memcpy) },
	{ 0xdcb764ad, __VMLINUX_SYMBOL_STR(memset) },
	{ 0x84bc974b, __VMLINUX_SYMBOL_STR(__arch_copy_from_user) },
	{ 0x28318305, __VMLINUX_SYMBOL_STR(snprintf) },
	{ 0xb01acbb5, __VMLINUX_SYMBOL_STR(_copy_from_iter) },
	{ 0x88db9f48, __VMLINUX_SYMBOL_STR(__check_object_size) },
	{ 0x45452cf0, __VMLINUX_SYMBOL_STR(___ratelimit) },
	{ 0xe471e19a, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_send_data) },
	{ 0x324b3877, __VMLINUX_SYMBOL_STR(up) },
	{ 0xf9a482f9, __VMLINUX_SYMBOL_STR(msleep) },
	{ 0x360ff19f, __VMLINUX_SYMBOL_STR(down) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0x985558a1, __VMLINUX_SYMBOL_STR(printk) },
	{ 0xc72e1233, __VMLINUX_SYMBOL_STR(__trace_bprintk) },
	{ 0x8ab2e3d5, __VMLINUX_SYMBOL_STR(vsnprintf) },
	{ 0x8f678b07, __VMLINUX_SYMBOL_STR(__stack_chk_guard) },
	{ 0xd5b8287f, __VMLINUX_SYMBOL_STR(mtk_wcn_stp_is_rxqueue_empty) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=wmt_drv";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
