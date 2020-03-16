#!/bin/bash
# find the files that got canceled then print them to failed_files
ruby ~/scripts/find_canceled.rb > relaunch.sh
chmod +x relaunch.sh
