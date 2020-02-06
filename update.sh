#!/bin/bash
sudo apt update         # have the newest packages ready
sudo pkcon update -y    # kde update
sudo snap refresh       # update snap packages
sudo apt autoremove     # clean up unsused packages
