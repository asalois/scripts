#!/bin/bash
konsole --hold -e "htop" &
psensor &
firefox &
cd ~/scripts/
git pull
./update.sh
