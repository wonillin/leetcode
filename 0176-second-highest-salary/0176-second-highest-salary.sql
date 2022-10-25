# Write your MySQL query statement below
WITH CTE AS(
SELECT salary
      ,DENSE_RANK() OVER (ORDER BY salary DESC) DR
  FROM Employee)

SELECT IFNULL((SELECT DISTINCT salary 
                FROM CTE 
               WHERE DR = 2), NULL) 'SecondhighestSalary'


