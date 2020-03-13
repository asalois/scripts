#!/bin/bash
# find the files that got canceled then print them to failed_files
(echo "good_ones" && ls qsmf_output_* | cut -d . -f 1 | cut -d _ -f 3 | sort -V ) > good_jobs.csv
python3 ~/scripts/give_me_relaunched.py 1000 1 >  found.txt
cat found.txt | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/' > out.txt
echo "sbatch --array="`cat out.txt` " qsmf_test_1.slurm"
python3 ~/scripts/give_me_relaunched.py 1512 1001 >  found.txt
cat found.txt | awk -vORS=, '{ print $1 }' | sed 's/,$/\n/' > out.txt
echo "sbatch --array="`cat out.txt` " qsmf_test_2.slurm"
rm out.txt
rm found.txt

