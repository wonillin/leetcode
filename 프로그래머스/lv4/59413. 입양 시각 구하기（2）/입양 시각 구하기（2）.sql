WITH RECURSIVE j_hour AS(
SELECT 0 AS hour
  UNION ALL
SELECT hour + 1 FROM j_hour WHERE hour < 23
)

SELECT hour
      ,COUNT(HOUR(ao.datetime)) count
  FROM j_hour 
       LEFT JOIN animal_outs ao ON j_hour.hour = HOUR(ao.datetime)
 GROUP BY hour