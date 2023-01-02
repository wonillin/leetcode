-- 코드를 입력하세요
SELECT YEAR(sales_date) 'year'
      ,MONTH(sales_date) 'month'
      ,COUNT(DISTINCT o.user_id) puchased_users
      ,ROUND(COUNT(DISTINCT o.user_id)/(SELECT COUNT(DISTINCT user_id)
                                          FROM user_info
                                         WHERE YEAR(joined) = '2021'), 1) puchased_ratio
  FROM user_info u
       INNER JOIN online_sale o ON u.user_id = o.user_id
 WHERE YEAR(joined) = '2021'
 GROUP BY year, month
 ORDER BY year, month
