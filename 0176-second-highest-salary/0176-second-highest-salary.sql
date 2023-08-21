# Write your MySQL query statement below
SELECT MAX(salary) SecondHighestSalary
  FROM 
(SELECT salary
      ,DENSE_RANK() OVER(ORDER BY salary DESC) rn
  FROM employee) a
 WHERE rn = 2


