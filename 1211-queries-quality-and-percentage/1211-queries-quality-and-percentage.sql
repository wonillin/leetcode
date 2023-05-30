# Write your MySQL query statement below
SELECT query_name
      ,ROUND(SUM(rating/position) / COUNT(query_name), 2) quality
      ,ROUND((SUM(IF(rating < 3, 1, 0)) / COUNT(query_name)) * 100, 2) poor_query_percentage
  FROM queries
 GROUP BY query_name
