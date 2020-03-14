# a file to find all the numbers not found in a list
import sys
import pandas
in_nums = pandas.read_csv('good_jobs.csv')


in_x = int(sys.argv[1])
in_start = int(sys.argv[2])
for i in range(in_start, in_x + 1):
    if i != 0:
        if not (i in in_nums.values):
            if i > 1000 :
                print(i - 1000 + 1)
            else:
                print(i)