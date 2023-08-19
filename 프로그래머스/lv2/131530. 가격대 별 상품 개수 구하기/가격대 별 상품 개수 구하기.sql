SELECT LEFT(price / 10000, 1) * 10000 price_group
      ,COUNT(*) products
  FROM product
 GROUP BY price_group
 ORDER BY price_group