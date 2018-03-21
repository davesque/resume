import pandas as pd


df = pd.read_csv('grades.csv')

mus = df[:-8]
eng = df[-8:]

mus_gpa = mus['pnts'].sum() / mus['units'].sum()
eng_gpa = eng['pnts'].sum() / eng['units'].sum()

print(f'mus gpa: {mus_gpa}, eng gpa: {eng_gpa}')
