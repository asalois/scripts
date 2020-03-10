#!/bin/bash
# find the files that got canceled then print them to failed_files
~/scripts/find_cancelled_1.sh | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/'
