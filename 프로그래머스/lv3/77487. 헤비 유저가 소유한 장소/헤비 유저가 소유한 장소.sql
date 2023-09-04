SELECT *
  FROM places p
 WHERE host_id IN (SELECT host_id
                     FROM places
                    GROUP BY host_id
                    HAVING COUNT(*) > 1)
 ORDER BY id

               