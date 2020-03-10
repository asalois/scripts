#!/bin/bash
grep "Elapsed time is"* *.out.txt -h | cut -d . -f 1 | cut -c 17-23 > run_time.txt 
cat run_time.txt | py --ji -l 'print("min "),  min(l)/3600, print("max "), max(l)/3600, print("median "), numpy.median(l)/3600, print("mean "), numpy.mean(l)/3600'
rm run_time.txt
