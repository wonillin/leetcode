SELECT cart_id
  FROM cart_products
 GROUP BY cart_id 
HAVING GROUP_CONCAT(NAME) REGEXP 'milk'
   AND GROUP_CONCAT(NAME) REGEXP 'yogurt'
 ORDER BY cart_id
 