# Write your MySQL query statement below
SELECT COUNT(customer_id) rich_count
  FROM 
(SELECT  customer_id
       ,SUM(IF(amount > 500, 1, 0)) cnt
  FROM store
 GROUP BY customer_id) a
WHERE cnt >= 1