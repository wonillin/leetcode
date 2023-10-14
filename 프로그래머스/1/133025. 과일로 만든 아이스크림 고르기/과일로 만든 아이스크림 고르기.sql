SELECT f.flavor
  FROM first_half f
       INNER JOIN icecream_info i ON f.flavor = i.flavor
 WHERE total_order > 3000
   AND ingredient_type = 'fruit_based'
 ORDER BY total_order DESC