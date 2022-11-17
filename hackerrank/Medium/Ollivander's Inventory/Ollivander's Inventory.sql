SELECT id
      ,age
      ,coins_needed
      ,power
  FROM wands w
       INNER JOIN wands_property wp ON w.code = wp.code
 WHERE is_evil = 0
   AND (age, power, coins_needed) IN (SELECT age
                                            ,power 
                                            ,MIN(coins_needed)
                                        FROM wands w
                                             INNER JOIN wands_property wp ON w.code = wp.code
                                       GROUP BY age, power)
 ORDER BY power DESC, age DESC
