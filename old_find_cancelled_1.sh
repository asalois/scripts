#!/bin/bash
# find the files that got canceled then print them to failed_files
grep "CANCELLED" *err.txt | cut -d . -f 1 |cut -d _ -f 4
grep "insufficient memory"* *.txt | cut -d . -f 1 |cut -d _ -f 4
grep "Abnormal termination"* *.txt | cut -d . -f 1 |cut -d _ -f 4
grep "Segmentation fault"* *.txt | cut -d . -f 1 |cut -d _ -f 4
grep "Resource temporarily unavailable"* *.txt | cut -d . -f 1 |cut -d _ -f 4
grep "java.log"* *.txt | cut -d . -f 1 |cut -d _ -f 4
find -L *err.txt  -maxdepth 1  -type f ! -size 0 | cut -d . -f 1 |cut -d _ -f 4 # find non-empty err files