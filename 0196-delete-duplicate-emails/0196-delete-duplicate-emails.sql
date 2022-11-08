# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
 
DELETE a FROM person a 
              INNER JOIN person b ON a.email = b.email
 WHERE a.id > b.id 
   AND a.email = b.email
