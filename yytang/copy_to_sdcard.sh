#!/bin/sh

ROOT="$(pwd)/../"

cd $ROOT
cp $ROOT/arch/arm/boot/uImage /media/yytang/BOOT/
cp $ROOT/arch/arm/boot/dts/exynos5250-snow.dtb /media/yytang/BOOT/

MODULE="3.15.6-g90bb407"
sudo rm -rf /media/yytang/ROOT/lib/modules/$MODULE 
sudo cp ~/projects/chromebook/linux-kvm-arm/modules/lib/modules/$MODULE /media/yytang/ROOT/lib/modules/ -rf


