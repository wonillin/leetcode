SELECT DISTINCT f1.x x1
      ,f1.y y1
  FROM functions f1
       INNER JOIN functions f2 ON f1.x = f2.y AND f2.x = f1.y
 WHERE f1.x < f1.y
    OR (f1.x, f1.y) IN (SELECT *
                          FROM functions
                         WHERE x = y
                         GROUP BY x
                        HAVING COUNT(*) >= 2) 
 ORDER BY x1