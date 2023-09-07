-- 2022년 03월 온/오프라인 / offline_sale => user_id null 표시 / 판매일 asc, product_id asc, user_id asc
SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') sales_date
      ,product_id
      ,user_id
      ,sales_amount
  FROM online_sale
 WHERE sales_date BETWEEN '2022-03-01' AND '2022-03-31'
 
UNION ALL 
 
SELECT DATE_FORMAT(sales_date, '%Y-%m-%d') sales_date
      ,product_id
      ,NULL user_id
      ,sales_amount
  FROM offline_sale
 WHERE sales_date BETWEEN '2022-03-01' AND '2022-03-31'
 ORDER BY sales_date, product_id, user_id