-- 서울에 위치한 식당 / 리뷰 평균점수 ROUND 2 / 평균점수DESC, 즐겨찾기DESC
SELECT ri.rest_id
      ,rest_name
      ,food_type
      ,favorites
      ,address
      ,ROUND(AVG(review_score), 2) score
  FROM rest_info ri
       INNER JOIN rest_review rr ON ri.rest_id = rr.rest_id
 WHERE address REGEXP '^서울'
 GROUP BY rest_id
 ORDER BY score DESC, favorites DESC