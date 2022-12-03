-- 코드를 입력하세요
WITH cte AS(
SELECT cart_id
      ,GROUP_CONCAT(name) name
  FROM cart_products
 GROUP BY cart_id)
 
SELECT DISTINCT cart_id
  FROM cart_products
 WHERE cart_id IN (SELECT cart_id  
                     FROM cte
                    WHERE name REGEXP 'Yogurt'
                      AND name REGEXP 'Milk')
 ORDER BY cart_id

              