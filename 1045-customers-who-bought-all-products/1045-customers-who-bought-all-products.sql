# Write your MySQL query statement below
SELECT customer_id
  FROM customer
 GROUP BY customer_id
 HAVING GROUP_CONCAT(DISTINCT product_key ORDER BY product_key) = (SELECT GROUP_CONCAT(product_key ORDER BY product_key)
                                                                     FROM product)
