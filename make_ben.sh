#!/bin/bash

echo "build uboot"
#source /opt/poky/2.0.2/environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi
#export ARCH=arm
#export CROSS_COMPILE=arm-poky-linux-gnueabi-
export ARCH=arm
export CROSS_COMPILE=/opt/fsl-linaro-toolchain/bin/arm-fsl-linux-gnueabi-

make clean;make distclean;
make mx6ul_14x14_lpddr2_arm2_defconfig
make -j16 


#write spl
#dd if=SPL of=/dev/sdc bs=1K seek=1
#dd if=u-boot.img of=/dev/sdc bs=1k seek=69

echo "build end"
