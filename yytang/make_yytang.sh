#!/bin/sh

ROOT="$(pwd)/../"

export ARCH=arm 
export CROSS_COMPILE=arm-linux-gnueabihf- 

cd $ROOT
echo "deleting the old zImage"
rm arch/arm/boot/zImage
echo "creating the new zImage"
make zImage dtbs -j4
echo "combine zImage and device tree binary"
cat arch/arm/boot/dts/rtsm_ve-cortex_a15x1.dtb >> arch/arm/boot/zImage



