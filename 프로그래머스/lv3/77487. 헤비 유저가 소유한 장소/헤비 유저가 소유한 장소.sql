WITH cte AS(
 SELECT host_id
       ,COUNT(*) cnt
   FROM places 
 GROUP BY host_id
 HAVING cnt >= 2
)


SELECT *
  FROM places
 WHERE host_id IN (SELECT DISTINCT host_id
                     FROM cte)
 ORDER BY id