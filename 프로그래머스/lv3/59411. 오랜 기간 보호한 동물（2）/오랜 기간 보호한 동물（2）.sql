-- 코드를 입력하세요
SELECT ai.animal_id
      ,ai.name
  FROM animal_ins ai
       INNER JOIN animal_outs ao ON ai.animal_id = ao.animal_id
 ORDER BY TIMESTAMPDIFF(second, ai.datetime, ao.datetime) DESC
 LIMIT 2
