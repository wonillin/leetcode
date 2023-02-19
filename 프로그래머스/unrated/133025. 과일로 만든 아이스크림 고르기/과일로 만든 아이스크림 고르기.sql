-- 코드를 입력하세요
SELECT f.flavor
  FROM first_half f
       LEFT JOIN icecream_info i ON f.flavor = i.flavor
 WHERE total_order > 3000
   AND ingredient_type LIKE 'fruit%'
 ORDER BY total_order DESC