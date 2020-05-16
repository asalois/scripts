# a file to find all the numbers not found in a list
import sys
import pandas
in_nums = pandas.read_csv('run_time.csv')
mean = in_nums["time"].mean() /3600
median = in_nums["time"].median() / 3600
max_time = in_nums["time"].max() / 3600
min_time = in_nums["time"].min() / 3600
print("mean= {:0.3f}hrs median= {:0.3f}hrs max= {:0.3f}hrs min= {:0.3f}hrs".format(mean, median, max_time, min_time))