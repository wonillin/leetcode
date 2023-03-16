SELECT id
      ,visit_date
      ,people
  FROM 
(SELECT id
      ,visit_date
      ,people
      ,ROW_NUMBER() OVER(ORDER BY id) rn
   FROM stadium
  WHERE people >= 100) a
 WHERE id - rn IN (SELECT id - rn 
                     FROM (SELECT id
                                 ,ROW_NUMBER() OVER(ORDER BY id) rn
                             FROM stadium
                            WHERE people >= 100) b
                    GROUP BY id - rn
                    HAVING COUNT(*) >= 3)