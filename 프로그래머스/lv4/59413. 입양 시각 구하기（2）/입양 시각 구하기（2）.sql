WITH RECURSIVE cnt_hour AS(
    SELECT 0 AS n
    UNION ALL
    SELECT n + 1 
      FROM cnt_hour
     WHERE n < 23
)

SELECT cnt_hour.n 'hour'
      ,COUNT(HOUR(DATETIME)) 'count'
  FROM cnt_hour
       LEFT JOIN animal_outs ao ON cnt_hour.n = HOUR(ao.DATETIME)
 GROUP BY hour
 ORDER BY hour