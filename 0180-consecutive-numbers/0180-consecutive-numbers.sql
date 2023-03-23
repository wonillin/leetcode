# Write your MySQL query statement below
SELECT DISTINCT num consecutivenums
  FROM
(SELECT id
      ,LAG(num) OVER(ORDER BY id) lag1
      ,num
      ,LEAD(num) OVER(ORDER BY id) lead1
  FROM logs) a
 WHERE lag1 = num 
   AND num = lead1