# Write your MySQL query statement below
WITH cte AS
(SELECT DISTINCT machine_id
      ,activity_type
      ,SUM(timestamp) OVER(PARTITION BY machine_id, activity_type) timestamp
  FROM activity)

SELECT DISTINCT machine_id
      ,ROUND(SUM(timestamp) / (SELECT COUNT(DISTINCT process_id) FROM activity), 3) processing_time
  FROM
(SELECT machine_id
       ,IF(activity_type = 'start', -timestamp, timestamp) timestamp
  FROM cte) a
 GROUP BY machine_id