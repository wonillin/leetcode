-- 코드를 입력하세요
SELECT YEAR(sales_date) 'YEAR'
      ,MONTH(sales_date) 'MONTH'
      ,gender
      ,COUNT(DISTINCT u.user_id) users
  FROM user_info u
       LEFT JOIN online_sale o ON u.user_id = o.user_id
 WHERE gender IS NOT NULL
   AND sales_date IS NOT NULL
 GROUP BY year, month, gender
 ORDER BY year, month, gender