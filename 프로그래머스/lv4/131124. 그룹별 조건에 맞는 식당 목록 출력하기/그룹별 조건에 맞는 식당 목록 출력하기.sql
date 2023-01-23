-- 코드를 입력하세요
WITH cte AS
(SELECT member_id
      ,COUNT(*) cnt
  FROM rest_review
 GROUP BY member_id
 HAVING cnt =(
SELECT MAX(cnt)
  FROM
(SELECT COUNT(*) cnt
   FROM rest_review
  GROUP BY member_id
  ORDER BY cnt DESC
  LIMIT 1) a ))
  
SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM member_profile m
       INNER JOIN rest_review r ON m.member_id = r.member_id
 WHERE m.member_id IN (SELECT member_id
                         FROM cte)
 ORDER BY review_date, review_text