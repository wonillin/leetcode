# Write your MySQL query statement below
SELECT project_id
      ,ROUND(AVG(experience_years), 2) average_years
  FROM employee e
       INNER JOIN project p ON e.employee_id = p.employee_id
 GROUP BY project_id
