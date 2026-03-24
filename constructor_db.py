import pandas as pd
import sqlite3

df = pd.read_csv('exoplanetas.csv')

df = df.dropna(subset=['pl_rade', 'pl_bmasse'])

conn = sqlite3.connect('datos_mision.db')

df.to_sql('exoplanetas', conn, if_exists='replace', index=False)
conn.close()
