#!/bin/sh

export ARCH=arm 
export CROSS_COMPILE=arm-linux-gnueabihf- 
make uImage dtbs -j4



