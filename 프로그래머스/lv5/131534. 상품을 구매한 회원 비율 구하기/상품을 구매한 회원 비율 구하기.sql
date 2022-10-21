-- 코드를 입력하세요
SELECT YEAR(sales_date) 'year'
      ,MONTH(sales_date) 'month'
      ,COUNT(DISTINCT os.user_id) puchased_user
      ,ROUND(COUNT(DISTINCT os.user_id)/(SELECT COUNT(*) FROM user_info
                                          WHERE YEAR(joined) = '2021'), 1) puchased_ratio
  FROM user_info ui
       LEFT JOIN online_sale os ON ui.user_id = os.user_id
WHERE joined BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
  AND year(sales_date) IS NOT NULL
GROUP BY YEAR(sales_date), MONTH(sales_date)