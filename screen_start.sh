#!/bin/bash
screen -S mySessionName -t 0 -A -d -m
screen -S mySessionName -X screen -t 1
screen -S mySessionName -p 0 -X stuff $'neofetch\n'
screen -S mySessionName -p 1 -X stuff $'watch -n 1 nvidia-smi\n'
