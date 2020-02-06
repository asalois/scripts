#!/bin/bash
# script to make a kernel and move the image 
sudo unzx -v linux-5.4.12.tar.xz
sudo tar -xvf linux-5.4.12.tar
sudo mv .conf linux-5.4.12
cd linux-5.4.12
make menuconfig
make -j8
sudo make modules_intsall
