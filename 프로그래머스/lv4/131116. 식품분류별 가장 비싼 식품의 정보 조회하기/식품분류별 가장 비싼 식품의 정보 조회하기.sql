-- 코드를 입력하세요
SELECT category
      ,price max_price
      ,product_name
  FROM food_product
 WHERE (category, price) IN (SELECT category
                                   ,MAX(price) max_p
                               FROM food_product
                              WHERE category IN ('과자', '국', '김치', '식용유')
                              GROUP BY category)
 ORDER BY max_price DESC