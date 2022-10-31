# Write your MySQL query statement below
SELECT e.name 'Employee'   
  FROM Employee e 
       INNER JOIN Employee e1 ON e.managerId = e1.id
 WHERE e.salary > e1.salary