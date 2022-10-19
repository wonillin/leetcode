-- 코드를 입력하세요
WITH CTE AS(
SELECT cart_id
      ,GROUP_CONCAT(name)
FROM cart_products
GROUP BY cart_id
HAVING FIND_IN_SET('Milk', GROUP_CONCAT(name)) 
       AND FIND_IN_SET('Yogurt', GROUP_CONCAT(name)))

SELECT cart_id
FROM cart_products
WHERE cart_id IN (SELECT cart_id FROM cte)
GROUP BY cart_id
ORDER BY cart_id