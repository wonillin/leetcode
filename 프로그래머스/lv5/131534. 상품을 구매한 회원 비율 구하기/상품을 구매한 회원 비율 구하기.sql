WITH cnt_2021 AS(
SELECT user_id
  FROM user_info
 WHERE joined BETWEEN '2021-01-01' AND '2021-12-31'
)


SELECT YEAR(sales_date) year
      ,MONTH(sales_date) month
      ,COUNT(DISTINCT user_id) puchased_users
      ,ROUND(COUNT(DISTINCT user_id) / (SELECT COUNT(*) FROM cnt_2021), 1) puchased_ratio
  FROM online_sale
 WHERE user_id IN (SELECT user_id 
                     FROM cnt_2021)
 GROUP BY year, month
 ORDER BY year, month
