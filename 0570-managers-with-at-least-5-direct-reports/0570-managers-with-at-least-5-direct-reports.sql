# Write your MySQL query statement below
SELECT e1.name
  FROM employee e1
       INNER JOIN employee e2 ON e1.id = e2.managerid
 GROUP BY e1.name
 HAVING COUNT(*) >= 5