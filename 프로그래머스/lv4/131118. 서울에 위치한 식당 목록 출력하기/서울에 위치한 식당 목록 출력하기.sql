-- 코드를 입력하세요
SELECT i.rest_id
      ,rest_name
      ,food_type
      ,favorites
      ,address
      ,ROUND(SUM(review_score) / COUNT(*), 2) score
  FROM rest_info i, rest_review r
 WHERE i.rest_id = r.rest_id
   AND address REGEXP '^서울'
 GROUP BY rest_id
 ORDER BY score DESC, favorites DESC
  