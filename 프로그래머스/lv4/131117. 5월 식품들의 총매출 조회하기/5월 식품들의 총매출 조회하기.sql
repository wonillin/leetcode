-- 코드를 입력하세요
SELECT fp.product_id
      ,product_name
      ,SUM(amount) * price total_sales
  FROM food_product fp
       INNER JOIN food_order fo ON fp.product_id = fo.product_id
 WHERE producE_date BETWEEN '2022-05-01' AND '2022-05-31' 
 GROUP BY fp.product_id
 ORDER BY total_sales DESC, fp.product_id
 