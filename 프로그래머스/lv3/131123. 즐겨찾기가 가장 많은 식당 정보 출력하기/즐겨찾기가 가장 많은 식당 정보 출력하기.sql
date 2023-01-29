-- 코드를 입력하세요
SELECT food_type
      ,rest_id
      ,rest_name
      ,favorites
  FROM rest_info
 WHERE (food_type, favorites) IN (SELECT food_type
                                        ,MAX(favorites) OVER(PARTITION BY food_type)
                                    FROM rest_info)
 ORDER BY food_type DESC