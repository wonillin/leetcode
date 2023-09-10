-- 7월 총 주문량 + 상반기 아이스크림 총 주문량 top 3
SELECT f.flavor
  FROM first_half f
       INNER JOIN july j ON f.flavor = j.flavor
 GROUP BY flavor
 ORDER BY SUM(f.total_order + j.total_order) DESC
 LIMIT 3