# Write your MySQL query statement below
WITH cte AS
(SELECT product_id
      ,new_price
      ,RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) rn
  FROM products
 WHERE change_date <= '2019-08-16')

SELECT DISTINCT p.product_id
      ,p.new_price price
  FROM products p 
       INNER JOIN cte ON p.product_id = cte.product_id
                      AND p.new_price = cte.new_price
 WHERE rn = 1

UNION ALL

SELECT DISTINCT product_id
      ,10 AS price
  FROM products 
 WHERE product_id NOT IN (SELECT DISTINCT product_id
                            FROM cte
                           WHERE rn = 1)
                     
