WITH cte AS
(SELECT food_type
      ,MAX(favorites)
  FROM rest_info
 GROUP BY food_type)


SELECT food_type
      ,rest_id
      ,rest_name
      ,favorites
  FROM rest_info
 WHERE (food_type, favorites) IN (SELECT *
                                    FROM cte)
 ORDER BY food_type DESC