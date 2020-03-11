#!/bin/bash
# find the files that got canceled then print them to failed_files
~/scripts/find_cancelled_1.sh > relaunched.txt
sort relaunched.txt -V > out.txt
uniq out.txt relaunched.txt
cat relaunched.txt | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/' > out.txt
echo "sbatch --array="`cat out.txt` " "  #`ls *.slurm`
rm relaunched.txt
rm out.txt
