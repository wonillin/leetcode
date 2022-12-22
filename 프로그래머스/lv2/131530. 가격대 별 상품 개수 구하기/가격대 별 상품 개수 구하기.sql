-- 코드를 입력하세요
SELECT left((price / 10000), 1) * 10000 price_group
      ,COUNT(product_id) product 
  FROM product
 GROUP BY left((price / 10000), 1) * 10000
 ORDER BY left((price / 10000), 1) * 10000