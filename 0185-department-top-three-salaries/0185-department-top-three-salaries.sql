# Write your MySQL query statement below
WITH cte AS
(SELECT name
      ,DENSE_RANK() OVER(PARTITION BY departmentid ORDER BY salary DESC) rk
  FROM employee)


SELECT d.name department
      ,e.name employee
      ,salary
  FROM employee e
       INNER JOIN department d on e.departmentid = d.id
 WHERE e.name IN (SELECT name
                    FROM cte
                   WHERE rk <= 3) 