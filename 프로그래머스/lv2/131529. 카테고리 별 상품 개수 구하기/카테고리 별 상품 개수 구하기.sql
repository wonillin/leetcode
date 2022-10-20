-- 코드를 입력하세요
SELECT LEFT(product_code, 2) product_code
      ,COUNT(LEFT(product_code, 2)) products
  FROM product
GROUP BY LEFT(product_code, 2) 
ORDER BY LEFT(product_code, 2)