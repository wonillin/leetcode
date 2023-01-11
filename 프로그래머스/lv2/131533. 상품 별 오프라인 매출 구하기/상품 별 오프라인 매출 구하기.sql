-- 코드를 입력하세요
SELECT product_code
      ,SUM(price * sales_amount) sales
  FROM product p
       INNER JOIN offline_sale o ON p.product_id = o.product_id
 GROUP BY product_code
 ORDER BY sales DESC, product_code