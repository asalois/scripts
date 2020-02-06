#!/bin/bash
# script to make a kernel and move the image 
source ~/scripts/arm_env.sh  # source in arm environment
cd ~/linux-socfpga/  # be in the socfpga dir
make -j8  # -jX will build the kernel on X threads
mv ~/images/zImage ~/images/zImagebak
sudo cp ~/linux-socfpga/arch/arm/boot/zImage ~/images
sudo cp ~/images/zImage /srv/tftp/de10nano/kernel
sudo sync
