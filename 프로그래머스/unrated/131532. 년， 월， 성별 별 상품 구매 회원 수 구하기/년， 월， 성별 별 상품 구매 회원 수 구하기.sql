-- 코드를 입력하세요
SELECT year(sales_date) 'year'
      ,month(sales_date) 'month' 
      ,gender
      ,COUNT(DISTINCT os.user_id) users
FROM user_info ui
     INNER JOIN online_sale os ON ui.user_id = os.user_id
WHERE gender IS NOT NULL
GROUP BY year, month, gender
ORDER BY year, month, gender