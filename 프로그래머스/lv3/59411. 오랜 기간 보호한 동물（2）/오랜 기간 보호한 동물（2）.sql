-- 코드를 입력하세요
SELECT i.animal_id
      ,i.name
  FROM animal_ins i
       LEFT JOIN animal_outs o ON i.animal_id = o.animal_id
 WHERE (i.datetime AND o.datetime) IS NOT NULL
 ORDER BY DATEDIFF(i.datetime, o.datetime)
 LIMIT 2
