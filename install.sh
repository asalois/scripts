#!/bin/bash
# a list to install dependecies 
sudo apt install $(cat pkglist.txt | awk '{print $1}') 


