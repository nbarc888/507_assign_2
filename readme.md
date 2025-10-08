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
4. Open db file in DB Browser for SQlite and run scripts on sql/analysis.sql 

### Alternate way to generate db via google colab 
1. Upload patients.csv into colab notebook

2. 


## Query Results - see eval.txt 


