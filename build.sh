#!/bin/bash

function compile() 
{
rm -rf AnyKernel
source ~/.bashrc && source ~/.profile
export LC_ALL=C && export USE_CCACHE=1
export ARCH=arm64
export KBUILD_BUILD_HOST=neolit
export KBUILD_BUILD_USER="sarthakroy2002"
if [ ! -d "clang" ]; then
    wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/tags/android-14.0.0_r50/clang-r510928.tar.gz -O "aosp-clang.tar.gz"
    mkdir clang && tar -xf aosp-clang.tar.gz -C clang && rm -rf aosp-clang.tar.gz
fi

[ -d "out" ] && rm -rf out || mkdir -p out

make O=out ARCH=arm64 RMX2020_defconfig

PATH="${PWD}/clang/bin:${PATH}" \
make -j$(nproc --all) O=out \
                      CC="clang" \
                      LLVM=1 \
                      CONFIG_NO_ERROR_ON_MISMATCH=y
}

zipping() {
    IMAGE="out/arch/arm64/boot/Image.gz-dtb"

    if [[ ! -f "$IMAGE" ]]; then
        echo "❌ ERROR: Kernel image not found at $IMAGE"
        echo "❌ Aborting zip process."
        return 1
    fi

    git clone --depth=1 https://github.com/sarthakroy2002/AnyKernel3.git AnyKernel || return 1
    cp "$IMAGE" AnyKernel || return 1

    (
        cd AnyKernel || exit 1
        zip -r9 Test-OSS-KERNEL-RMX2020-NEOLIT.zip .
    )
}

compile
zipping
