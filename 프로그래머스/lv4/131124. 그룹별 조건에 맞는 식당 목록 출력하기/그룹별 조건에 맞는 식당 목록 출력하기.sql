-- 리뷰 작성일 오름차순, 리뷰 텍스트 오름차순
-- REVIEW_DATE의 데이트 포맷이 예시와 동일해야 정답처리 됩니다.
WITH rank_member AS
(SELECT member_id
       ,DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) dr
   FROM rest_review
  GROUP BY member_id)

SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM member_profile m
       INNER JOIN rest_review r ON m.member_id = r.member_id
 WHERE m.member_id IN (SELECT member_id
                         FROM rank_member
                        WHERE dr = 1)
 ORDER BY review_date, review_text
