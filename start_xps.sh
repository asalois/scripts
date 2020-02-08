#!/bin/bash
konsole --hold -e "htop" &
cd ~/scripts/
./br0down.sh
#firefox &
git pull
./update.sh
