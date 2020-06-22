#!/usr/bin/env python3
import pandas as pd

# Read in outputs from MATLAB
df = pd.read_csv('old1_qsmf_output.csv')
df.drop_duplicates(subset=[ 'Laser Power (dBm)', 'Length of Segment 1 (km)','Span (km)'],inplace=True) 

# Rearrange
df= df[['Laser Power (dBm)','Q (dB)', 'Length of Segment 1 (km)','Span (km)','Compensation (%)', ' fiberAeff_1', ' fiberAeff_2', ' fiberAlphadB_1', ' fiberAlphadB_2']]
df = df.sort_values(['Compensation (%)', 'Span (km)', 'Length of Segment 1 (km)', 'Laser Power (dBm)'])
df.to_csv('qsmf_output.csv', index=False)

# Make subframes from compensation
comp =[frame for percComp, frame in df.groupby(by='Span (km)')]

# Create a Pandas Excel writer using XlsxWriter as the engine.
writer = pd.ExcelWriter('qsmf_output.xlsx', engine='xlsxwriter')

x = [10, 20, 25, 30, 40, 50, 60, 75, 80, 120, 150]
# Write each dataframe to a different worksheet.
for n, df in enumerate(comp):
    df = df.sort_values(['Length of Segment 1 (km)', 'Laser Power (dBm)'])
    df.to_excel(writer,'span_%s' % x[n], index=False)


# Close the Pandas Excel writer and output the Excel file.
writer.save()
