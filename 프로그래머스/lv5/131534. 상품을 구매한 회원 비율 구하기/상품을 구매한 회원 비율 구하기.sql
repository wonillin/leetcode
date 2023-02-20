-- 코드를 입력하세요
SELECT YEAR(sales_date) 'year'
      ,MONTH(sales_date) 'month'
      ,COUNT(DISTINCT u.user_id) purchased_users
      ,ROUND(COUNT(DISTINCT u.user_id) / (SELECT COUNT(*)
                                            FROM user_info
                                           WHERE joined BETWEEN '2021-01-01' AND '2021-12-31'), 1) purchased_ratio
  FROM user_info u 
       LEFT JOIN online_sale o ON u.user_id = o.user_id
 WHERE joined BETWEEN '2021-01-01' AND '2021-12-31'
   AND sales_date IS NOT NULL
 GROUP BY year, month
 ORDER BY year, month