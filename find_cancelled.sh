#!/bin/bash
# find the files that got canceled then print them to failed_files
(echo "good_ones" && ls qsmf_output_* | cut -d . -f 1 | cut -d _ -f 3 | sort -V ) > good_jobs.csv
python3 ~/scripts/give_me_relaunched.py 1512 1 0 1 >  relaunch.sh
chmod +x relaunch.sh
(echo "QdB, laserPowerdBmArray, segmentLength_1, percComp, fiberAeff_1, fiberAeff_2, fiberAlphadB_1, fiberAlphadB_2" && cat qsmf_output_*) > qsmf_output.csv
python3 ~/scripts/make_excel.py 
rm qsmf_output.csv 