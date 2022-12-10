-- 코드를 입력하세요
WITH food_p AS(
    SELECT product_name
          ,price
          ,category
          ,DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) dr
      FROM food_product
     WHERE category REGEXP ('과자|국|김|식용유')
) 

SELECT category
      ,price max_price
      ,product_name
  FROM food_p
 WHERE dr = 1
 ORDER BY max_price DESC