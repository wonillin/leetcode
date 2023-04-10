-- 코드를 입력하세요
SELECT fh.flavor
  FROM first_half fh
       LEFT JOIN july j ON fh.flavor = j.flavor
 GROUP BY flavor
 ORDER BY SUM(fh.total_order + j.total_order) DESC
 LIMIT 3