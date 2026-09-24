cmd_/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o := clang -Wp,-MD,/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/.ring.o.d -nostdinc -isystem /home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11/toolchain/clang/host/linux-x86/clang-r383902/lib64/clang/11.0.1/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common -D__KERNEL__ -DVENDOR_EDIT -Qunused-arguments -DVENDOR_EDIT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_MMC_DRIVER -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_UIFIRST -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_MMCPLUS -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_TP_BASIC -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_EXT4_SUPPORT -DOPLUS_FEATURE_OF2FS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DVENDOR_EDIT -DCOLOROS_EDIT -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DCONFIG_OPLUS_SECURE_GUARD -DCONFIG_OPLUS_ROOT_CHECK -DCONFIG_OPLUS_KEVENT_UPLOAD -DOPLUS_FEATURE_MULTIBITS_BL -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -DVENDOR_EDIT --target=aarch64-linux-gnu --prefix=/home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11/toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- --gcc-toolchain=/home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11/toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -no-integrated-as -Werror=unknown-warning-option -fuse-ld=lld -DVENDOR_EDIT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_MMC_DRIVER -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_UIFIRST -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_MMCPLUS -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_TP_BASIC -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_EXT4_SUPPORT -DOPLUS_FEATURE_OF2FS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DVENDOR_EDIT -DCOLOROS_EDIT -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DCONFIG_OPLUS_SECURE_GUARD -DCONFIG_OPLUS_ROOT_CHECK -DCONFIG_OPLUS_MOUNT_BLOCK -DCONFIG_OPLUS_EXECVE_BLOCK -DCONFIG_OPLUS_EXECVE_REPORT -DCONFIG_OPLUS_KEVENT_UPLOAD -DOPPO_DISALLOW_KEY_INTERFACES -DOPLUS_FEATURE_MULTIBITS_BL -DCONFIG_OPLUS_FEATURE_UFSPLUS -DCONFIG_OPLUS_FEATURE_EXFAT_SUPPORT -DCONFIG_OPLUS_FEATURE_SDCARDFS_SUPPORT -DCONFIG_OPLUS_FEATURE_EXT4_SUPPORT -DCONFIG_OPLUS_FEATURE_OF2FS -fno-PIE -mno-implicit-float -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -fno-pic -Wno-asm-operand-widths -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=1500 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-duplicate-decl-specifier -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -D CONFIG_MTK_WCN_ARM64 -D WMT_IDC_SUPPORT=1 -D MTK_WCN_WMT_STP_EXP_SYMBOL_ABSTRACT  -I../drivers/misc/mediatek/include  -I../drivers/misc/mediatek/include/mt-plat/mt6771/include  -I../drivers/misc/mediatek/include/mt-plat/mt6771/include/mach  -I../drivers/misc/mediatek/include/mt-plat  -I../drivers/misc/mediatek/base/power/mt6771  -I../drivers/misc/mediatek/base/power/include  -I../drivers/misc/mediatek/base/power/include/clkbuf_v1  -I../drivers/misc/mediatek/base/power/include/clkbuf_v1/mt6771  -I../drivers/misc/mediatek/btif/common/inc  -I../drivers/misc/mediatek/eccci  -I../drivers/misc/mediatek/eccci/mt6771  -I../drivers/misc/mediatek/eemcs  -I../drivers/misc/mediatek/conn_md/include  -I../drivers/misc/mediatek/mach/mt6771/include/mach  -I../drivers/misc/mediatek/emi/submodule  -I../drivers/misc/mediatek/emi/mt6771  -I../drivers/mmc/core  -I../drivers/misc/mediatek/connectivity/common  -I../drivers/misc/mediatek/include/mt-plat -Werror -D CONSYS_PMIC_CTRL_6635=1  -I../arch/arm/mach-mt6771//dct/dct -DWMT_PLAT_ALPS=1 -D MTK_WCN_SOC_CHIP_SUPPORT  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/linux/include  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_detect/drv_init/inc  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_detect  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility -D MTK_WCN_WLAN_GEN3  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/linux/include  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/linux/pri/include  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/platform/include  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/core/include  -I/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/common_main/include -D WMT_PLAT_ALPS=1 -D WMT_UART_RX_MODE_WORK=0 -D WMT_SDIO_MODE=1 -D WMT_CREATE_NODE_DYNAMIC=1 -D WMT_DBG_SUPPORT=1 -D WMT_DEVAPC_DBG_SUPPORT=1 -D CFG_WMT_STEP  -DMODULE -mcmodel=large -DVENDOR_EDIT -DVENDOR_EDIT -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_HANS_FREEZE -DOPLUS_FEATURE_MMC_DRIVER -DOPLUS_FEATURE_AOD -DOPLUS_FEATURE_DC -DOPLUS_FEATURE_ENABLE_MODEM_DB -DOPLUS_FEATURE_ENGINEERTOOLS -DOPLUS_FEATURE_FACERECOGNITION -DOPLUS_FEATURE_FASTBOOT_UNLOCK_VERIFY -DOPLUS_FEATURE_FG_IO_OPT -DOPLUS_FEATURE_PERFORMANCE -DOPLUS_FEATURE_FINGERPRINT -DOPLUS_FEATURE_HEALTHINFO -DOPLUS_FEATURE_TASK_CPUSTATS -DOPLUS_FEATURE_UIFIRST -DOPLUS_FEATURE_SPECIALOPT -DOPLUS_FEATURE_UFSPLUS -DOPLUS_FEATURE_MMCPLUS -DOPLUS_FEATURE_MIPICLKCHANGE -DOPLUS_FEATURE_MULTI_FREEAREA -DOPLUS_FEATURE_MULTI_KSWAPD -DOPLUS_FEATURE_NFC_CONSOFT -DOPLUS_FEATURE_ONSCREENFINGERPRINT -DOPLUS_FEATURE_OSC -DOPLUS_FEATURE_PHOENIX -DOPLUS_FEATURE_AGINGTEST -DOPLUS_FEATURE_PROCESS_RECLAIM -DOPLUS_FEATURE_RESET_ROLLBACK_INDEX -DOPLUS_FEATURE_SELINUX_CONTROL_LOG -DOPLUS_FEATURE_SENSOR -DOPLUS_FEATURE_SENSOR_ALGORITHM -DOPLUS_FEATURE_SENSOR_SMEM -DOPLUS_FEATURE_SENSOR_WISELIGHT -DOPLUS_FEATURE_IOMONITOR -DOPLUS_FEATURE_SPEAKER_MUTE -DOPLUS_FEATURE_MM_FEEDBACK -DOPLUS_FEATURE_TP_BSPFWUPDATE -DOPLUS_FEATURE_TP_BASIC -DOPLUS_FEATURE_CHG_BASIC -DOPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY -DOPLUS_FEATURE_MEMLEAK_DETECT -DOPLUS_FEATURE_WIFI_LIMMITBGSPEED -DOPLUS_FEATURE_WIFI_MTUDETECT -DOPLUS_FEATURE_WIFI_RUSUPGRADE -DOPLUS_FEATURE_WIFI_SLA -DOPLUS_FEATURE_WIFI_SMART_BW -DOPLUS_FEATURE_DATA_EVAL -DOPLUS_FEATURE_ZRAM_OPT -DOPLUS_FEATURE_EXFAT_SUPPORT -DOPLUS_FEATURE_SDCARDFS_SUPPORT -DOPLUS_FEATURE_STORAGE_TOOL -DOPLUS_FEATURE_EXT4_SUPPORT -DOPLUS_FEATURE_OF2FS -DOPLUS_FEATURE_LOWMEM_DBG -DOPLUS_BUG_COMPATIBILITY -DOPLUS_FEATURE_MIDAS -DOPLUS_BUG_STABILITY -DOPLUS_BUG_DEBUG -DOPLUS_ARCH_INJECT -DOPLUS_ARCH_EXTENDS -DVENDOR_EDIT -DCOLOROS_EDIT -DOPLUS_FEATURE_POWERINFO_STANDBY -DOPLUS_FEATURE_SCHEDUTIL_USE_TL -DOPLUS_FEATURE_CORE_CTL -DOPLUS_FEATURE_CAMERA_COMMON -DOPLUS_FEATURE_MTK_ION_SEPARATE_LOCK -DCONFIG_OPLUS_SECURE_GUARD -DCONFIG_OPLUS_ROOT_CHECK -DCONFIG_OPLUS_KEVENT_UPLOAD -DOPLUS_FEATURE_MULTIBITS_BL -DKBUILD_BASENAME='"ring"'  -DKBUILD_MODNAME='"wmt_drv"' -c -o /home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/.tmp_ring.o /home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.c

source_/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o := /home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.c

deps_/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o := \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.h \
  ../include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
    $(wildcard include/config/kasan.h) \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \
  ../arch/arm64/include/asm/barrier.h \
  ../include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
  ../include/linux/kasan-checks.h \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11/toolchain/clang/host/linux-x86/clang-r383902/lib64/clang/11.0.1/include/stdarg.h \
  ../include/uapi/linux/string.h \
  ../arch/arm64/include/asm/string.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  ../include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
  ../include/linux/linkage.h \
  ../include/linux/stringify.h \
  ../include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  ../arch/arm64/include/asm/linkage.h \
  ../include/linux/bitops.h \
  ../include/linux/bits.h \
  ../include/linux/const.h \
  ../include/uapi/linux/const.h \
  ../arch/arm64/include/asm/bitops.h \
  ../include/asm-generic/bitops/builtin-__ffs.h \
  ../include/asm-generic/bitops/builtin-ffs.h \
  ../include/asm-generic/bitops/builtin-__fls.h \
  ../include/asm-generic/bitops/builtin-fls.h \
  ../include/asm-generic/bitops/ffz.h \
  ../include/asm-generic/bitops/fls64.h \
  ../include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  ../include/asm-generic/bitops/sched.h \
  ../include/asm-generic/bitops/hweight.h \
  ../include/asm-generic/bitops/arch_hweight.h \
  ../include/asm-generic/bitops/const_hweight.h \
  ../include/asm-generic/bitops/lock.h \
  ../include/asm-generic/bitops/non-atomic.h \
  ../include/asm-generic/bitops/le.h \
  ../arch/arm64/include/uapi/asm/byteorder.h \
  ../include/linux/byteorder/little_endian.h \
    $(wildcard include/config/cpu/big/endian.h) \
  ../include/uapi/linux/byteorder/little_endian.h \
  ../include/linux/swab.h \
  ../include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  ../include/uapi/asm-generic/swab.h \
  ../include/linux/byteorder/generic.h \
  ../include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  ../include/linux/typecheck.h \
  ../include/linux/printk.h \
    $(wildcard include/config/mtk/aee/feature.h) \
    $(wildcard include/config/mtk/eng/build.h) \
    $(wildcard include/config/printk/mt/prefix.h) \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  ../include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  ../include/linux/kern_levels.h \
  ../include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  ../include/uapi/linux/kernel.h \
  ../include/uapi/linux/sysinfo.h \
  ../arch/arm64/include/asm/cache.h \
    $(wildcard include/config/kasan/sw/tags.h) \
  ../arch/arm64/include/asm/cputype.h \
  ../arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  ../arch/arm64/include/asm/compiler.h \
  ../include/linux/build_bug.h \
  ../include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  ../include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  ../arch/arm64/include/asm/bug.h \
  ../arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  ../arch/arm64/include/asm/brk-imm.h \
  ../include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \

/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o: $(deps_/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o)

$(deps_/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules/connectivity/common/debug_utility/ring.o):
