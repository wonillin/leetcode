WITH RECURSIVE cte AS(
    SELECT 0 hour
    UNION ALL
    SELECT hour + 1 
      FROM cte
     WHERE hour < 23
)

SELECT hour
      ,COUNT(hour(ao.datetime)) AS count
  FROM animal_outs ao
       RIGHT JOIN cte ON hour(ao.datetime) = hour 
 GROUP BY hour
 ORDER BY hour