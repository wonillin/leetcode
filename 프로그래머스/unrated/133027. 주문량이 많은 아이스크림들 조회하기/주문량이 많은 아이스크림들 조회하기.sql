-- 코드를 입력하세요
SELECT f.flavor
  FROM first_half f
       INNER JOIN july j ON f.flavor = j.flavor
 GROUP BY 1
 ORDER BY SUM(f.total_order) + SUM(j.total_order) DESC
 LIMIT 3