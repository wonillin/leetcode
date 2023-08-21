-- 코드를 입력하세요
SELECT YEAR(sales_date) 'year'
      ,MONTH(sales_date) 'month'
      ,gender
      ,COUNT(DISTINCT os.user_id) user
  FROM online_sale os
       INNER JOIN user_info ui ON os.user_id = ui.user_id
 WHERE gender IS NOT NULL
 GROUP BY year, month, gender
 ORDER BY year, month, gender