# a file to find all the numbers not found in a list
import pandas
df = pandas.read_csv('jobs.csv')

# beggining of bash script
if df['jobs'].max() < 1:
    print(1)
else:
    print(df['jobs'].max() + 1)
