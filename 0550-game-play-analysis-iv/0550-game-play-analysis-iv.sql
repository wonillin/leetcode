WITH cte AS
(
  SELECT player_id
        ,MIN(event_date) first_login
    FROM activity a1
    GROUP BY a1.player_id
)

SELECT ROUND(COUNT(a.player_id) / COUNT(DISTINCT cte.player_id), 2) fraction
  FROM cte 
       LEFT JOIN activity a ON cte.player_id = a.player_id
                           AND cte.first_login = DATE_ADD(event_date, INTERVAL -1 DAY)