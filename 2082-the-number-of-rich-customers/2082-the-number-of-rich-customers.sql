# Write your MySQL query statement below
SELECT COUNT(DISTINCT customer_id) rich_count
  FROM store
 WHERE amount > 500