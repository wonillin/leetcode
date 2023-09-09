# FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회. 
# 이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.

SELECT fp.product_id
      ,fp.product_name
      ,SUM(price * amount) total_sales
  FROM food_product fp
       LEFT JOIN food_order fo ON fp.product_id = fo.product_id
 WHERE produce_date BETWEEN '2022-05-01' AND '2022-05-31'
 GROUP BY product_id
 ORDER BY total_sales DESC, product_id