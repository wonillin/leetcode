# Write your MySQL query statement below
SELECT DISTINCT p.product_id 
      ,product_name
  FROM product p
       INNER JOIN sales s ON p.product_id = s.product_id
 WHERE p.product_id NOT IN (SELECT product_id
                              FROM sales
                             WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31')
