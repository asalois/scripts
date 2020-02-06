#!/bin/bash
# install all the things
sudo apt update       # update
sudo apt install htop -y # install and run htop durring install
konsole --hold -e "htop" &
sudo apt install build-essential libncurses-dev bison flex libssl-dev libelf-dev -y # install all the things to build kernel
sudo apt install lm-sensors psensor -y # be able to read temperatures
sudo snap install code --classic # vscode
sudo snap install discord # discord
sudo snap install spotify # spotify
sudo pkcon update || sudo apt dist-upgrade -y # update using kde manger otherwise use apt
sudo apt autoremove # remove old packages

