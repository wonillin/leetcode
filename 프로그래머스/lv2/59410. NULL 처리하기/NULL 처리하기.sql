-- 코드를 입력하세요
SELECT animal_type
      ,IFNULL(name, 'No name') name
      ,sex_upon_intake
  FROM animal_ins