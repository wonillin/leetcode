SELECT LEFT(product_code, 2) category
      ,COUNT(product_code) products 
  FROM product
 GROUP BY category
 ORDER BY category