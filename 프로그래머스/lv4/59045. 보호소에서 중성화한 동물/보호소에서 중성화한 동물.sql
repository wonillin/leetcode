-- 코드를 입력하세요
SELECT animal_id
      ,animal_type
      ,name
  FROM animal_ins
 WHERE sex_upon_intake REGEXP 'Intact'
   AND animal_id IN (SELECT animal_id
                       FROM animal_outs
                      WHERE sex_upon_outcome REGEXP ('Spayed|Neutered'))
 ORDER BY animal_id
                      
                      
