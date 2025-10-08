# 507 - Assignment 2
Goal is to create a stand-alone .sql schema for a single table 

Repo Scaffold 
| 507_assign_2 |  |
|----|----|
| data |  |
|  | patients.csv |
| images |  |
| sql |  |
|  | analysis.sql |
|  | schema.sql |
| src |  |
|  | create_db.py |
|  | import_csv.py |
| Eval.txt |  |
| blank.sql |  |
| clinic_simple.db |  |
| requirements.txt |  |

Download links: 
DB Browser for SQLite: https://sqlitebrowser.org/dl/
Alternate to DB Browser for VS Code - SQlite Extension: https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite 

## How to run code
1. Install requirements.txt in terminal 
   ```bash
   pip install -r requirements.txt
   ```
2. Run script to create the db file 
   ```bash
   python src/create_db.py
   ```
3. Load rows into db file 
   ```bash
   python src/import_csv.py
   ```
4. Open db file in DB Browser for SQlite 
5. To create and run queries input click on execute SQL and input the scripts seen in analysis.sql . Note: RUN ONLY QUERY CODE AT A TIME 


#### Alternate way to generate db via google colab 
1. Upload patients.csv into colab notebook
2. Input following codes
   ```bash
   import pandas as pd
   import sqlite3
   import sqlalchemy import create_engine
   import matplotlib.pyplot as plt
   ```
   ```bash
   data = pd.read_csv('/content/patients.csv')
   data
   ```
   ```bash
   sqlite3.connect('clinic_simple.db')
   ```
   ```bash
   conn = create_engine('sqlite:///clinic_simple.db')
   conn
   ```
   ```bash
   data.to_sql('clinic_simple.db', conn , if_exists='replace', index=False)
   ```

   Then download the generated db file 


#### Alternate way to view and run queries using VS code extension SQlite 

## Query Results - see eval.txt 

#### Total amt of patients: 
500 

#### Top primary diagnoses by count: 
| Primary_icd | Count |
|---|---|
|I10	| 81 |
|E11.9	| 73 |
|E78.5	| 62 |
|J45.909 | 46 |
|F41.9	| 33 |
|K21.9	| 30 |
|M54.5	| 26 |
|E03.9	| 22 |
|R51.9	| 21 |
|I25.10	| 21 |

