#!/bin/sh

ROOT="$(pwd)/../"
export ARCH=arm 
export CROSS_COMPILE=arm-linux-gnueabihf- 

cd $ROOT
#make uImage dtbs -j4
make modules
mkdir -p modules
make modules_install INSTALL_MOD_PATH=modules

