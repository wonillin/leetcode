# Write your MySQL query statement below
WITH cte AS(
    SELECT d.name department
          ,e.name employee
          ,salary
          ,DENSE_RANK() OVER(PARTITION BY departmentid ORDER BY salary DESC) dr
      FROM employee e
           INNER JOIN department d ON e.departmentid = d.id
)

SELECT department
      ,employee
      ,salary
  FROM cte
 WHERE dr = 1
  