#입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

SELECT ao.animal_id
      ,ao.name
  FROM animal_outs ao
       LEFT JOIN animal_ins ai ON ao.animal_id = ai.animal_id
 WHERE ai.animal_id IS NULL
 ORDER BY animal_id, name