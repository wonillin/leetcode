-- 코드를 입력하세요
SELECT YEAR(sales_date) 'year'
      ,month(sales_date) 'month'
      ,gender
      ,COUNT(DISTINCT o.user_id) users
  FROM user_info u
      INNER JOIN online_sale o ON u.user_id = o.user_id
 WHERE gender IS NOT NULL
 GROUP BY year, month, gender
 ORDER BY year, month, gender