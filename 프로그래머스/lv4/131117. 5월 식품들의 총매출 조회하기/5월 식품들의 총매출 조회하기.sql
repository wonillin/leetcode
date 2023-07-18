-- 코드를 입력하세요
SELECT fp.product_id
      ,fp.product_name
      ,SUM(amount * price) total_sales
  FROM food_product fp
       LEFT JOIN food_order fo ON fp.product_id = fo.product_id
 WHERE produce_date BETWEEN '2022-05-01' AND '2022-05-31'
 GROUP BY product_id
 ORDER BY total_sales DESC, product_id