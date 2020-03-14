
import pandas as pd

#
df = pd.read_csv('qsmf_output.csv')
comp =[frame for percComp, frame in df.groupby(by=' percComp')]

# Create a Pandas Excel writer using XlsxWriter as the engine.
writer = pd.ExcelWriter('qsmf_output.xlsx', engine='xlsxwriter')

# Write each dataframe to a different worksheet.
for n, df in enumerate(comp):
    x = n*20
    df = df.sort_values([' segmentLength_1', ' laserPowerdBmArray'])
    df.to_excel(writer,'PercComp%s' % x)


# Close the Pandas Excel writer and output the Excel file.
writer.save()