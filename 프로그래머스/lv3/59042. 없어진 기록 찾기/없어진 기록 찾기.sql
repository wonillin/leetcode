-- 코드를 입력하세요
SELECT ao.animal_id animal_id
      ,ao.name
  FROM animal_ins ai
       RIGHT JOIN animal_outs ao ON ai.animal_id = ao.animal_id
WHERE ai.animal_id IS NULL
ORDER BY animal_id