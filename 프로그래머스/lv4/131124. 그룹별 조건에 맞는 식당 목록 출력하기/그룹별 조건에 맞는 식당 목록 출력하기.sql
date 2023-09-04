# REVIEW_DATE의 데이트 포맷이 예시와 동일해야 정답처리 됩니다.
# 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성해주세요. 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.
WITH rank_member AS
(SELECT member_id
      ,DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) dr
  FROM rest_review
 GROUP BY member_id)



SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM member_profile mp
       INNER JOIN rest_review rr ON mp.member_id = rr.member_id
 WHERE mp.member_id IN (SELECT member_id
                          FROM rank_member
                         WHERE dr = 1)
 ORDER BY review_date, review_text