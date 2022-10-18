CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N=N-1; 
  RETURN (
      # Write your MySQL query statement below.
      ifnull((select distinct salary 
             from employee
             order by salary desc
             limit 1 offset N), null)
  );
END