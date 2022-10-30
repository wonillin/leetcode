-- write your code in PostgreSQL 9.4

SELECT team_id
      ,team_name
      ,SUM(num_points) num_points
  FROM (SELECT team_id
              ,team_name
              ,CASE
                  WHEN host_goals > guest_goals THEN 3
                  WHEN host_goals = guest_goals THEN 1 
                  ELSE 0
              END num_points
          FROM teams t 
               LEFT JOIN matches m ON t.team_id = m.host_team

        UNION ALL
       
       SELECT team_id
             ,team_name
             ,CASE
                 WHEN host_goals < guest_goals THEN 3
                 WHEN host_goals = guest_goals THEN 1 
                 ELSE 0
              END num_points
         FROM teams t 
              LEFT JOIN matches m ON t.team_id = m.guest_team) a
 GROUP BY team_id, team_name
 ORDER BY num_points DESC, team_id