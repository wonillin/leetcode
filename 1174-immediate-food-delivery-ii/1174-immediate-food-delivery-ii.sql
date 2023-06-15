# Write your MySQL query statement below
WITH cte AS
(SELECT customer_id
      ,order_date
      ,customer_pref_delivery_date cp 
      ,RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rn
  FROM delivery)

SELECT ROUND((COUNT(*) / (SELECT COUNT(DISTINCT customer_id) FROM delivery)) * 100, 2) immediate_percentage
  FROM cte
 WHERE rn = 1
   AND order_date = cp