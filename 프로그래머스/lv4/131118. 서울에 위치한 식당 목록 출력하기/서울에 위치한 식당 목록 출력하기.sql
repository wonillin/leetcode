SELECT i.rest_id
      ,rest_name
      ,food_type
      ,favorites
      ,address
      ,ROUND(AVG(review_score), 2) score
  FROM rest_info i
       INNER JOIN rest_review r ON i.rest_id = r.rest_id
 WHERE address LIKE '서울%'
 GROUP BY rest_id
 ORDER BY score DESC, favorites DESC