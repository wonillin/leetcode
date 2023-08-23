SELECT LEFT(product_code, 2) category
      ,COUNT(*) products 
  FROM product
 GROUP BY category
 ORDER BY category