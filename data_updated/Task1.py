import numpy as np
import pandas as pd


#Cleans out all the null values
df = pd.read_excel('nba-mvp-voting.xlsx', index_col=0).fillna(value=0)

years = df.drop_duplicates(subset=['season'])
years_in_list = years['season'].values.tolist()

x = df.drop(['award_share', 'season', 'player'] ,axis = 1) #dataset when you drop the response variable

response_variable = df['award_share'] #the response variable

#variable that counts the index
counter = 0

#The index for each year (Will be used for removing one classifier)
index_different_years = []

for x in years_in_list:
    for y in df['season']:
        if (y == x):
            counter += 1
    index_different_years.append(counter)

print(index_different_years)
