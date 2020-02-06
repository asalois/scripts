#!/bin/bash
konsole --hold -e "htop" &
psensor &
firefox &
git pull
./update.sh
