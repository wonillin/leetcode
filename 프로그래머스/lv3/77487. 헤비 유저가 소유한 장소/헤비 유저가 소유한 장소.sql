-- 코드를 입력하세요
SELECT id
      ,name
      ,host_id
FROM places
WHERE host_id not in (SELECT host_id
                      FROM places
                      GROUP BY host_id
                      HAVING COUNT(host_id) <= 1)
ORDER BY id
