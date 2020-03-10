#!/bin/bash
# find the files that got canceled then print them to failed_files
~/scripts/find_cancelled.sh > relaunched.txt
echo "sbatch --array=" `cat relaunched.txt` " "  `ls *.slurm`
rm relaunched.txt
