-- 코드를 입력하세요
SELECT cart_id
  FROM (SELECT cart_id
              ,GROUP_CONCAT(name) name
          FROM cart_products
         GROUP BY cart_id) a
 WHERE FIND_IN_SET('Milk',name)
   AND FIND_IN_SET('Yogurt',name)
 ORDER BY cart_id

