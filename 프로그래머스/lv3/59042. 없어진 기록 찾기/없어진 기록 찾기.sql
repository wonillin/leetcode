-- 코드를 입력하세요
SELECT ao.animal_id
      ,ao.name
  FROM animal_outs ao 
       LEFT JOIN animal_ins ai ON ao.animal_id = ai.animal_id
 WHERE ai.animal_id IS NULL
 ORDER BY animal_id
      
  