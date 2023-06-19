# Write your MySQL query statement below
WITH cte AS
(SELECT p.product_id
      ,price
      ,SUM(IF(purchase_date BETWEEN start_date AND end_date, units, 0)) a_price
  FROM prices p
       LEFT JOIN unitssold u ON p.product_id = u.product_id
  GROUP BY p.product_id, price)

SELECT product_id
      ,ROUND(SUM(price * a_price) / SUM(a_price), 2) average_price
  FROM cte
 GROUP BY product_id