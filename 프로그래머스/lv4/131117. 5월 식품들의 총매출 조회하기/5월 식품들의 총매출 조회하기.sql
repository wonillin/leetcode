SELECT p.product_id 
      ,p.product_name
      ,SUM(price * amount) total_sales
  FROM food_product p
       INNER JOIN food_order o ON p.product_id = o.product_id
 WHERE produce_date BETWEEN '2022-05-01' AND '2022-05-31'
 GROUP BY p.product_id
 ORDER BY total_sales DESC, product_id