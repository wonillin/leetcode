SELECT animal_id
      ,name
      ,IF(sex_upon_intake REGEXP 'Neutered|Spayed', 'O', 'X') '중성화'
  FROM animal_ins
 ORDER BY animal_id