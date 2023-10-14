SELECT ai.animal_id
      ,ai.name
  FROM animal_ins ai
       LEFT JOIN animal_outs ao ON ai.animal_id = ao.animal_id
 ORDER BY DATEDIFF(ao.datetime, ai.datetime) DESC
 LIMIT 2