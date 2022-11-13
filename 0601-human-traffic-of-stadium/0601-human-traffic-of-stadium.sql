# Write your MySQL query statement below
WITH cte AS(
SELECT id
      ,ROW_NUMBER() OVER (ORDER BY id) rn 
      ,visit_date
      ,people
  FROM stadium
 WHERE people >= 100)

SELECT id
      ,visit_date
      ,people
  FROM cte
 WHERE id - rn IN (SELECT (id - rn)
                     FROM cte
                    GROUP BY (id - rn)
                    HAVING COUNT(*) >= 3)
