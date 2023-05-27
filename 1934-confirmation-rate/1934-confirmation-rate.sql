# Write your MySQL query statement below
WITH cte AS
(SELECT user_id
      ,ROUND(SUM(IF(action = 'confirmed', 1, 0)) / COUNT(*), 2) confirmation_rate
  FROM confirmations
 GROUP BY user_id)

SELECT s.user_id
      ,IFNULL(confirmation_rate, 0) confirmation_rate
  FROM signups s
       LEFT JOIN cte ON s.user_id = cte.user_id