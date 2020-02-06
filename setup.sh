#!/bin/bash
# a set up scrip for kernel building on a SOCFPGA
cd  # put the github link in root
git clone https://github.com/altera-opensource/linux-socfpga
cd ~/linux-socfpga/
git checkout tags/rel_socfpga-4.19_19.04.01_pr -b wifidongle  # grab a specfic tag
mkdir ~/images  # to put the zImage in
. ~/scripts/arm_env.sh  # set the enviroment to arm
cd ~/linux-socfpga/
make menuconfig  # setup the kernel 
ifconfig  # list current ip
pwd  # current di
echo Setup Done

