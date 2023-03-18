-- 코드를 입력하세요
SELECT f.flavor
  FROM first_half f
       LEFT JOIN july j ON f.flavor = j.flavor
 GROUP BY flavor
 ORDER BY SUM(f.total_order + j.total_order) DESC
 LIMIT 3