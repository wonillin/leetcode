SELECT HOUR(datetime) hour
      ,COUNT(*) count
  FROM animal_outs
 WHERE HOUR(datetime) BETWEEN 9 AND 19
 GROUP BY hour
 ORDER BY hour
 