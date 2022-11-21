# Write your MySQL query statement below
SELECT patient_id
      ,patient_name
      ,conditions
  FROM patients
 WHERE conditions REGEXP '^DIAB1|.* DIAB1.*$'