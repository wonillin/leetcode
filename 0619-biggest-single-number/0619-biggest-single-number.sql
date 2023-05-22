# Write your MySQL query statement below
WITH cte AS
(SELECT num
  FROM mynumbers
 GROUP BY num 
 HAVING COUNT(*) = 1
 ORDER BY num DESC
 LIMIT 1)

SELECT MAX(num) num
  FROM mynumbers
 WHERE num IN (SELECT num 
                 FROM cte)