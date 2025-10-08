--- ADDITIONAL - Average age of patients within dataset 
-- Part 1: To generate the csv file "age_eval.csv"
SELECT
  patient_id,
  birth_date,
  last_visit_dt,
  CAST((julianday(date('now')) - julianday(birth_date)) / 365.25 AS INT) AS age_years
FROM patients
ORDER BY age_years DESC
-- Part 2: To create new table from new csv 
Go to file, import table from csv and make sure column names in first line is checked off 
-- Part 3: to calculate average based on new file go to execute sql file and insert following code
SELECT AVG(age_years)
FROM age_eval;
