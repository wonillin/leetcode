SELECT ao.animal_id
      ,ao.name
  FROM animal_outs ao
       INNER JOIN animal_ins ai ON ao.animal_id = ai.animal_id
 ORDER BY DATEDIFF(ao.datetime, ai.datetime) DESC 
 LIMIT 2