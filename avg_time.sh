#!/bin/bash
(echo "time" && grep "Elapsed time is"* *.out.txt -h | cut -d . -f 1 | cut -c 17-23) > run_time.csv 
python3 ~/scripts/average.py
rm run_time.csv
