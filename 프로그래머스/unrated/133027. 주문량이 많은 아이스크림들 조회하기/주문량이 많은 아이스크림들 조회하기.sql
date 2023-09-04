# 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회

SELECT f.flavor
  FROM first_half f
       LEFT JOIN july j ON f.flavor = j.flavor
 GROUP BY flavor
 ORDER BY SUM(f.total_order + j.total_order) DESC
 LIMIT 3