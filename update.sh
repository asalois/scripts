#!/bin/bash
sudo apt update         # have the newest packages ready
sudo pkcon update -y
sudo snap refresh       # update snap packages
sudo apt autoremove -y     # clean up unsused packages
