# a file to find all the numbers not found in a list
import sys
import pandas
in_nums = pandas.read_csv('good_jobs.csv')


in_x = int(sys.argv[1])
in_start = int(sys.argv[2])
num_grab = int(sys.argv[3])
sleep_time = int(sys.argv[4])
j = 0
num_list = []
print("#!/bin/bash")
print("# to relaunch jobs")
for i in range(in_start, in_x + 1):
    if j != num_grab + 1:
        if i != 0:
            if not (i in in_nums.values):
                if i > 1000:
                    num_list.append(i - 1000 + 1)
                else:
                    num_list.append(i)
                j += 1
    else:
        if i > 1000 +1 :
            print("sbatch --array=", end = '')
            print(*num_list, sep = ",", end = '')
            print(" qsmf_test_2.slurm")
        else:    
            print("sbatch --array=", end = '')
            print(*num_list, sep = ",", end = '')
            print(" qsmf_test_1.slurm")
        print("sleep", str(sleep_time))
        j = 0
        num_list = []
print("echo Done")