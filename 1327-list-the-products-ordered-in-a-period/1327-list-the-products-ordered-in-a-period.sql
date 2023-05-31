# Write your MySQL query statement below
WITH cte AS
(SELECT product_id
      ,unit
  FROM orders
 WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29')
 
SELECT product_name
      ,SUM(unit) unit
  FROM products p 
       INNER JOIN cte ON p.product_id = cte.product_id
 GROUP BY product_name
 HAVING unit >= 100