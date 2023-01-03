-- 코드를 입력하세요
SELECT fp.product_id
      ,product_name
      ,SUM(amount * price) total_sales
  FROM food_product fp
       INNER JOIN food_order fo ON fp.product_id = fo.product_id
 WHERE produce_date BETWEEN '2022-05-01 00:00:00' AND '2022-05-31 23:59:59'
 GROUP BY product_id, product_name
 ORDER BY total_sales DESC, product_id
    