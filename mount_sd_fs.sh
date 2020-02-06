#!/bin/bash
cd /media/alex/748467f7-8fb1-426f-95e1-774e86b0ffe3/
sudo mount -t proc /proc proc
sudo mount -t sysfs /sys sys
sudo mount -B /dev dev
sudo mount -B /dev/pts dev/pts

