#!/bin/bash
sudo apt update         # have the newest packages ready
sudo apt upgrade -y    # kde update
sudo snap refresh       # update snap packages
sudo apt autoremove     # clean up unsused packages
