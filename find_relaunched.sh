#!/bin/bash
# find the files that outputted then make a script to relaunch jobs
(echo "good_ones" && ls qsmf_output_* | cut -d . -f 1 | cut -d _ -f 3 | sort -V ) > good_jobs.csv # get all the numbers from all the .csv files
python3 ~/scripts/give_me_relaunched.py $1 $3 $1 1 $2 >  relaunch.sh # write the output to relaunch.sh
chmod +x relaunch.sh # make executable
rm good_jobs.csv
(echo "QdB, laserPowerdBmArray, segmentLength_1, percComp, fiberAeff_1, fiberAeff_2, fiberAlphadB_1, fiberAlphadB_2, span" && cat qsmf_output_*) > qsmf_output.csv # make all the csv files one
python3 ~/scripts/make_excel.py 
mv qsmf_output.csv ../
mv qsmf_output.xlsx ../
mv relaunch.sh ../
