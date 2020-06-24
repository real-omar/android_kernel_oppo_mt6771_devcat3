#!/bin/bash

echo "========================================="
echo "Complete Kernel and Modules Build Script"
echo "========================================="

# Navigate to kernel directory
cd /home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11 || exit 1

# ============================================
# PART 1: SET ENVIRONMENT VARIABLES
# ============================================
echo ""
echo "Step 1: Setting up environment..."
export CROSS_COMPILE=$(pwd)/toolchain/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=$(pwd)/toolchain/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export ARCH=arm64
export CLANG_TOOL_PATH=$(pwd)/toolchain/clang/host/linux-x86/clang-r383902/bin/
export PATH=${CLANG_TOOL_PATH}:${PATH//"${CLANG_TOOL_PATH}:"}

# Set paths
KERNEL_OUT=$(pwd)/out
AUTOCONF_H=${KERNEL_OUT}/include/generated/autoconf.h
VENDOR_MODULES=/home/omar/Desktop/kernel-dev/vendor/mediatek/kernel_modules
MODULES_COLLECTION=/home/omar/Desktop/kernel-dev/modules_collection

# Create module collection directory (flat - all .ko files go here directly)
mkdir -p ${MODULES_COLLECTION}

# ============================================
# PART 2: BUILD THE KERNEL
# ============================================
echo ""
echo "Step 2: Building kernel..."
echo "========================================="

make -C $(pwd) O=${KERNEL_OUT} \
  CC=clang \
  LD=ld.lld \
  AS=aarch64-linux-android-as \
  ARCH=arm64 \
  CLANG_TRIPLE=aarch64-linux-gnu- \
  oppo6771_defconfig

make -C $(pwd) O=${KERNEL_OUT} \
  CC=clang \
  LD=ld.lld \
  AS=aarch64-linux-android-as \
  ARCH=arm64 \
  CLANG_TRIPLE=aarch64-linux-gnu- \
  KCFLAGS="-Wno-strict-prototypes" \
  -j4

# Copy kernel images
cp ${KERNEL_OUT}/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
cp ${KERNEL_OUT}/arch/arm64/boot/Image.gz $(pwd)/arch/arm64/boot/Image.gz
cp ${KERNEL_OUT}/arch/arm64/boot/Image.gz-dtb $(pwd)/arch/arm64/boot/Image.gz-dtb

echo "✓ Kernel built successfully!"

# ============================================
# PART 3: BUILD ALL VENDOR MODULES
# ============================================
echo ""
echo "Step 3: Building vendor modules..."
echo "========================================="

# --------------------------------------------
# Helper: merge_symvers <src_dir> <dst_dir>
#   Appends all new symbols from src_dir/Module.symvers
#   into dst_dir/Module.symvers, avoiding duplicates.
# --------------------------------------------
merge_symvers() {
    local src_dir=$1
    local dst_dir=$2
    local src="${src_dir}/Module.symvers"
    local dst="${dst_dir}/Module.symvers"

    if [ ! -f "$src" ]; then
        echo "  ⚠ No Module.symvers found in $src_dir — skipping merge"
        return 1
    fi

    # Create dst symvers if it doesn't exist yet
    touch "$dst"

    # Append only lines not already present (avoid duplicate symbols)
    local added=0
    while IFS= read -r line; do
        if ! grep -qF "$line" "$dst"; then
            echo "$line" >> "$dst"
            added=$((added + 1))
        fi
    done < "$src"

    echo "  ✓ Merged Module.symvers: $src → $dst ($added new symbols)"
}

# --------------------------------------------
# Helper: build_module <dir> <name>
# --------------------------------------------
build_module() {
    local dir=$1
    local name=$2

    if [ -d "$dir" ] && [ -f "$dir/Makefile" ]; then
        echo ""
        echo "Building: $name"
        cd "$dir"

        make -C ${KERNEL_OUT} M=$(pwd) modules \
            AUTOCONF_H=${AUTOCONF_H} \
            CC=clang \
            LD=ld.lld \
            ARCH=arm64 \
            CLANG_TRIPLE=aarch64-linux-gnu- \
            CROSS_COMPILE=${CROSS_COMPILE} \
            CROSS_COMPILE_ARM32=${CROSS_COMPILE_ARM32}

        if [ $? -eq 0 ]; then
            echo "✓ $name built successfully"
            # Always return to kernel dir so relative paths stay stable
            cd /home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11
            return 0
        else
            echo "✗ $name failed to build"
            cd /home/omar/Desktop/kernel-dev/android_kernel_oppo_mt6771-oppo-mt6771_r_11
            return 1
        fi
    else
        echo "⚠ Directory not found or missing Makefile: $dir"
        return 1
    fi
}

# ============================================
# Build order with symvers merging
#
# Dependency tree:
#   kernel (Module.symvers in KERNEL_OUT)
#     └── common
#           └── wlan/adaptor  (exports register_set_p2p_mode_handler)
#                 └── wlan/core/gen3
#           └── bt/mt66xx/legacy
#           └── fmradio
#           └── gps
# ============================================

# --- 1. Common ---
# Needs only kernel symbols (already in KERNEL_OUT/Module.symvers)
build_module "${VENDOR_MODULES}/connectivity/common" "Common Modules"

# --- 2. WLAN Adaptor ---
# Depends on: kernel + common
# Merge common's symvers in before building
merge_symvers "${VENDOR_MODULES}/connectivity/common" \
              "${VENDOR_MODULES}/connectivity/wlan/adaptor"
build_module "${VENDOR_MODULES}/connectivity/wlan/adaptor" "WLAN Adaptor"

# --- 3. Wi-Fi Gen3 ---
# Depends on: kernel + common + wlan/adaptor
#   (needs register_set_p2p_mode_handler from adaptor)
merge_symvers "${VENDOR_MODULES}/connectivity/common" \
              "${VENDOR_MODULES}/connectivity/wlan/core/gen3"
merge_symvers "${VENDOR_MODULES}/connectivity/wlan/adaptor" \
              "${VENDOR_MODULES}/connectivity/wlan/core/gen3"
build_module "${VENDOR_MODULES}/connectivity/wlan/core/gen3" "Wi-Fi Gen3"

# Uncomment below if you ever re-enable gen2/gen4 variants:
#merge_symvers "${VENDOR_MODULES}/connectivity/common"        "${VENDOR_MODULES}/connectivity/wlan/core/gen2"
#merge_symvers "${VENDOR_MODULES}/connectivity/wlan/adaptor"  "${VENDOR_MODULES}/connectivity/wlan/core/gen2"
#build_module  "${VENDOR_MODULES}/connectivity/wlan/core/gen2" "Wi-Fi Gen2"

#merge_symvers "${VENDOR_MODULES}/connectivity/common"              "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7668"
#merge_symvers "${VENDOR_MODULES}/connectivity/wlan/adaptor"        "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7668"
#build_module  "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7668" "Wi-Fi Gen4 MT7668"

#merge_symvers "${VENDOR_MODULES}/connectivity/common"              "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7663"
#merge_symvers "${VENDOR_MODULES}/connectivity/wlan/adaptor"        "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7663"
#build_module  "${VENDOR_MODULES}/connectivity/wlan/core/gen4-mt7663" "Wi-Fi Gen4 MT7663"

#merge_symvers "${VENDOR_MODULES}/connectivity/common"         "${VENDOR_MODULES}/connectivity/wlan/core/gen4m"
#merge_symvers "${VENDOR_MODULES}/connectivity/wlan/adaptor"   "${VENDOR_MODULES}/connectivity/wlan/core/gen4m"
#build_module  "${VENDOR_MODULES}/connectivity/wlan/core/gen4m" "Wi-Fi Gen4m"

# --- 4. Bluetooth ---
# Depends on: kernel + common
#   (needs mtk_wcn_wmt_* and mtk_wcn_stp_* from common/wmt)
merge_symvers "${VENDOR_MODULES}/connectivity/common" \
              "${VENDOR_MODULES}/connectivity/bt/mt66xx/legacy"
build_module "${VENDOR_MODULES}/connectivity/bt/mt66xx/legacy" "Bluetooth"

# --- 5. FM Radio ---
# Depends on: kernel + common
merge_symvers "${VENDOR_MODULES}/connectivity/common" \
              "${VENDOR_MODULES}/connectivity/fmradio"
build_module "${VENDOR_MODULES}/connectivity/fmradio" "FM Radio"

# --- 6. GPS ---
# Depends on: kernel + common
merge_symvers "${VENDOR_MODULES}/connectivity/common" \
              "${VENDOR_MODULES}/connectivity/gps"
build_module "${VENDOR_MODULES}/connectivity/gps" "GPS"

# --- 7. Remaining standalone modules (no connectivity deps) ---
#build_module "${VENDOR_MODULES}/met_drv/4.14" "met_drv"
#build_module "${VENDOR_MODULES}/met_drv_v2"   "met_drv_v2"
#build_module "${VENDOR_MODULES}/udc"           "udc"


# ============================================
# PART 4: COLLECT ALL MODULES
# ============================================
echo ""
echo "Step 4: Collecting all modules..."
echo "========================================="

# Collect all .ko files from vendor modules into a single flat directory
echo "Collecting all vendor modules..."
find ${VENDOR_MODULES} -name "*.ko" -type f 2>/dev/null | while read module; do
    cp -v "$module" "${MODULES_COLLECTION}/" 2>/dev/null
done

# Also collect .ko files from the kernel out directory
echo "Collecting kernel out modules..."
find ${KERNEL_OUT} -name "*.ko" -type f ! -path "*/modules_install/*" 2>/dev/null | while read module; do
    cp -v "$module" "${MODULES_COLLECTION}/" 2>/dev/null
done

# ============================================
# PART 5: CREATE MODULE INFO FILE
# ============================================
echo ""
echo "Step 5: Creating module information file..."
echo "========================================="

INFO_FILE=${MODULES_COLLECTION}/modules_info.txt
cat > ${INFO_FILE} << EOF
========================================
Kernel and Modules Build Information
========================================
Build Date: $(date)
Kernel Source: $(pwd)
Kernel Version: $(make -C ${KERNEL_OUT} kernelrelease 2>/dev/null)
Build Architecture: arm64

========================================
Module Collection Summary
========================================
EOF

echo "" >> ${INFO_FILE}
echo "Module counts:" >> ${INFO_FILE}
echo "  Total modules: $(find ${MODULES_COLLECTION} -maxdepth 1 -name "*.ko" -type f | wc -l)" >> ${INFO_FILE}
echo "" >> ${INFO_FILE}

echo "Detailed module information:" >> ${INFO_FILE}
echo "========================================" >> ${INFO_FILE}
echo "" >> ${INFO_FILE}

# Add detailed info for each module
find ${MODULES_COLLECTION} -maxdepth 1 -name "*.ko" -type f | sort | while read module; do
    echo "Module: $(basename "$module")" >> ${INFO_FILE}
    echo "  Location: $module" >> ${INFO_FILE}
    modinfo "$module" 2>/dev/null | grep -E "description|author|license|depends|vermagic" | sed 's/^/  /' >> ${INFO_FILE}
    echo "" >> ${INFO_FILE}
done

# ============================================
# PART 6: FINAL SUMMARY
# ============================================
echo ""
echo "========================================="
echo "BUILD COMPLETE!"
echo "========================================="
echo ""
echo "Kernel images:"
echo "  - ${KERNEL_OUT}/arch/arm64/boot/Image"
echo "  - ${KERNEL_OUT}/arch/arm64/boot/Image.gz"
echo "  - ${KERNEL_OUT}/arch/arm64/boot/Image.gz-dtb"
echo ""
echo "All modules collected in:"
echo "  ${MODULES_COLLECTION}"
echo ""
echo "Module summary:"
echo "  Total: $(find ${MODULES_COLLECTION} -maxdepth 1 -name "*.ko" -type f | wc -l) modules"
echo ""
echo "Module information: ${INFO_FILE}"
echo "Module loading script: ${LOAD_SCRIPT}"
echo ""
echo "To use these modules on your device:"
echo "  1. Copy ${MODULES_COLLECTION} to your device"
echo "  2. Run: sh ${MODULES_COLLECTION}/load_modules.sh"
echo ""
echo "========================================="
