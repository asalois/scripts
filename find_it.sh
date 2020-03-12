#!/bin/bash
# find the files that got canceled then print them to failed_files
(echo "good_ones" && ls qsmf_span_output_* | cut -d . -f 1 | cut -d _ -f 4 | sort -V ) > good_jobs.csv
python3 ~/scripts/give_me_relaunched.py 252 >  found.txt
cat found.txt | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/' > out.txt
echo "sbatch --array="`cat out.txt` " "  `ls *.slurm`
rm out.txt
rm found.txt