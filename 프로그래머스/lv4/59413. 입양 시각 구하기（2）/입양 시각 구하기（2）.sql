WITH RECURSIVE cte AS(
SELECT 0 AS h
 UNION ALL
SELECT h + 1 
  FROM cte
 WHERE h < 23
)

SELECT h hour
      ,COUNT(HOUR(a.datetime)) count
  FROM cte
       LEFT JOIN animal_outs a  ON cte.h = HOUR(a.datetime)
 GROUP BY 1
 


 