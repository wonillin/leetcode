SELECT animal_id
      ,name
  FROM animal_ins
 WHERE name REGEXP 'el'
   AND animal_type = 'Dog'
 ORDER BY name