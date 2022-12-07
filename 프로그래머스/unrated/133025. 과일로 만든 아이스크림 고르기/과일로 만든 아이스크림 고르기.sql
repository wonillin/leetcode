-- 코드를 입력하세요
SELECT f.flavor
  FROM first_half f
       INNER JOIN icecream_info i ON f.flavor = i.flavor
 WHERE total_order > 3000
   AND ingredient_type REGEXP 'fruit'