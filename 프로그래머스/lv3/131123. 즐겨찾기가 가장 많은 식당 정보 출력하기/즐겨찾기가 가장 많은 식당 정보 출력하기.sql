-- 코드를 입력하세요
WITH rest_dr AS
(SELECT *
      ,DENSE_RANK() OVER(PARTITION BY food_type ORDER BY favorites DESC) dr
  FROM rest_info)
  
SELECT food_type
      ,rest_id
      ,rest_name
      ,favorites
  FROM rest_dr
 WHERE dr = 1
 ORDER BY food_type DESC