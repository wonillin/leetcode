# Write your MySQL query statement below
SELECT person_name
  FROM
(SELECT person_name
      ,SUM(weight) OVER(ORDER BY turn) sum_w
  FROM queue) a
 WHERE sum_w <= 1000
 ORDER BY sum_w DESC
 LIMIT 1