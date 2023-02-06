-- 코드를 입력하세요
SELECT f.product_id
      ,product_name
      ,SUM(price * amount) total_sales
  FROM food_product f
       LEFT JOIN food_order o ON f.product_id = o.product_id
 WHERE produce_date BETWEEN '2022-05-01' AND '2022-05-31'
 GROUP BY 1
 ORDER BY total_sales DESC, product_id