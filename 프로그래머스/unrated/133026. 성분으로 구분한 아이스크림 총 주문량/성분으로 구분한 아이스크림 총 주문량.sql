# 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회
# 이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정해주세요.

SELECT ingredient_type
      ,SUM(total_order) total_order
  FROM icecream_info i
       LEFT JOIN first_half f ON i.flavor = f.flavor
 GROUP BY ingredient_type
 ORDER BY total_order