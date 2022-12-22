-- 코드를 입력하세요
SELECT animal_type
      ,IF(name IS NULL, 'No name', name)
      ,sex_upon_intake
  FROM animal_ins