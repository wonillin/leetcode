WITH RECURSIVE num_hour AS(
    SELECT 0 AS n
    UNION ALL
    SELECT n + 1 
      FROM num_hour
    WHERE n < 23
)
  
SELECT n 'HOUR'
      ,COUNT(HOUR(DATETIME)) 'COUNT'    
  FROM num_hour nh
       LEFT JOIN ANIMAL_OUTS ao ON nh.n = HOUR(ao.DATETIME)
 GROUP BY hour
 ORDER BY hour