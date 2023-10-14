SELECT ingredient_type
      ,SUM(total_order) total_order
  FROM first_half h
       LEFT JOIN icecream_info i ON h.flavor = i.flavor
 GROUP BY ingredient_type
 ORDER BY total_order