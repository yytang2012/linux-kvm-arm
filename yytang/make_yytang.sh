#!/bin/sh

export ARCH=arm 
export CROSS_COMPILE=arm-linux-gnueabi-

ROOT="$(pwd)/../"
cd $ROOT

echo "compilng dtbs ..."
make dtbs
echo "copy exynos5250-arndale.dtb to images-to-fuse "
cp arch/arm/boot/dts/exynos5250-arndale.dtb ~/virtualization/images-to-fuse/

echo "compilng uImage..."
make uImage -j8
echo "copy uImage to images-to-fuse"
cp arch/arm/boot/uImage ~/virtualization/images-to-fuse/

echo "compilng modules..."
make modules

mkdir -p modules
make modules_install INSTALL_MOD_PATH=modules
mv modules ~/virtualization/images-to-fuse/modules
echo "done"

