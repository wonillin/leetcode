-- 코드를 입력하세요
SELECT *
  FROM places
 WHERE host_id IN (SELECT host_id
                     FROM places
                    GROUP BY host_id
                   HAVING COUNT(*) >= 2
                    ORDER BY id) 
 ORDER BY id