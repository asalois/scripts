#!/bin/bash
cd ~/scripts/ # go to the right place
./br0down.sh # restart the wifi
git pull # update
./update.sh # update all the pakages
./cancel-white-noise.sh # stop the buzzing