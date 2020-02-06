#!/bin/bash
sudo apt update  # have the newest packages ready
sudo apt upgrade
sudo apt install $(cat ~/scripts/pkglist.txt | awk '{print $1}') # install all dependencies 
sudo apt autoremove  # clean up 
