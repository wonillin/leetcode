SELECT cart_id
  FROM cart_products
 GROUP BY cart_id
 HAVING GROUP_CONCAT(name) REGEXP 'yogurt'
    AND GROUP_CONCAT(name) REGEXP 'milk'
 ORDER BY cart_id