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
	{ 0x82f1d010, __VMLINUX_SYMBOL_STR(device_create) },
	{ 0x7485e15e, __VMLINUX_SYMBOL_STR(unregister_chrdev_region) },
	{ 0x96fddaf4, __VMLINUX_SYMBOL_STR(cdev_del) },
	{ 0x5d620303, __VMLINUX_SYMBOL_STR(class_destroy) },
	{ 0x9c9d8d75, __VMLINUX_SYMBOL_STR(device_destroy) },
	{ 0x49e0881c, __VMLINUX_SYMBOL_STR(__class_create) },
	{ 0x6fbaace4, __VMLINUX_SYMBOL_STR(cdev_add) },
	{ 0x819b4908, __VMLINUX_SYMBOL_STR(cdev_init) },
	{ 0x29537c9e, __VMLINUX_SYMBOL_STR(alloc_chrdev_region) },
	{ 0xd8e484f0, __VMLINUX_SYMBOL_STR(register_chrdev_region) },
	{ 0xf0fdf6cb, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0xdcb764ad, __VMLINUX_SYMBOL_STR(memset) },
	{ 0xd977b15b, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_off) },
	{ 0x84bc974b, __VMLINUX_SYMBOL_STR(__arch_copy_from_user) },
	{ 0x88db9f48, __VMLINUX_SYMBOL_STR(__check_object_size) },
	{ 0x8f678b07, __VMLINUX_SYMBOL_STR(__stack_chk_guard) },
	{ 0x324b3877, __VMLINUX_SYMBOL_STR(up) },
	{ 0xf9a482f9, __VMLINUX_SYMBOL_STR(msleep) },
	{ 0x7d6e061e, __VMLINUX_SYMBOL_STR(mtk_wcn_wmt_func_on) },
	{ 0x43b0c9c3, __VMLINUX_SYMBOL_STR(preempt_schedule) },
	{ 0x33b5bc1f, __VMLINUX_SYMBOL_STR(dev_get_by_name) },
	{ 0x3f9e3603, __VMLINUX_SYMBOL_STR(init_net) },
	{ 0x360ff19f, __VMLINUX_SYMBOL_STR(down) },
	{ 0x98cf60b3, __VMLINUX_SYMBOL_STR(strlen) },
	{ 0x985558a1, __VMLINUX_SYMBOL_STR(printk) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=wmt_drv";


MODULE_INFO(srcversion, "533BB7E5866E52F63B9ACCB");
