# a file to find all the numbers not found in a list
import sys
import pandas
in_nums = pandas.read_csv('run_time.csv')
mean = in_nums["time"].mean() /60
median = in_nums["time"].median() / 60
max_time = in_nums["time"].max() / 60
min_time = in_nums["time"].min() / 60
num = in_nums.size
print("mean= {:0.3f}mins median= {:0.3f}mins max= {:0.3f}mins min= {:0.3f}mins num={:g}".format(mean, median, max_time, min_time, num))
