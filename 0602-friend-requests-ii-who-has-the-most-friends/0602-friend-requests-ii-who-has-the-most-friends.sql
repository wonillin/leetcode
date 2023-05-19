# Write your MySQL query statement below
SELECT requester_id id
      ,SUM(cnt) num
  FROM 
(SELECT requester_id
      ,COUNT(*) cnt
  FROM requestaccepted
 GROUP BY requester_id

UNION ALL 

SELECT accepter_id
      ,COUNT(*) cnt
  FROM requestaccepted
 GROUP BY accepter_id) a
GROUP BY requester_id
ORDER BY num DESC
LIMIT 1