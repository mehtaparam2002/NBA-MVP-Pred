import numpy as np
import pandas as pd

list_players = []

dataset = pd.read_excel('nba-mvp-voting.xlsx', index_col=0, sheet_name = "NBA Data")

x = dataset.drop('award_share', axis = 1) #dataset when you drop the response variable

y = dataset['award_share'] #the response variable

#Cleans out all the null values
df['fg_pct'] = df['fg_pct'].fillna(0)
df['fg3_pct'] = df['fg3_pct'].fillna(0)
df['ft_pct'] = df['ft_pct'].fillna(0)
