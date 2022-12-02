-- 코드를 입력하세요
SELECT YEAR(sales_date) 'YEAR'
      ,MONTH(sales_date) 'MONTH'
      ,gender
      ,COUNT(DISTINCT os.user_id) USERS
  FROM user_info ui
       INNER JOIN online_sale os ON ui.user_id = os.user_id
 WHERE gender IS NOT NULL 
 GROUP BY YEAR(sales_date), MONTH(sales_date), gender
 ORDER BY YEAR(sales_date), MONTH(sales_date), gender
 