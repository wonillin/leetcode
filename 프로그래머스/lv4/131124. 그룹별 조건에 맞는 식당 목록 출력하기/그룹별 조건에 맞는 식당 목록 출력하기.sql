-- 코드를 입력하세요
SELECT p.member_name
      ,r.review_text
      ,DATE_FORMAT(r.review_date, '%Y-%m-%d') review_date
  FROM member_profile p
       LEFT JOIN rest_review r ON p.member_id = r.member_id
 WHERE p.member_id IN (SELECT member_id
                         FROM (SELECT member_id
                                     ,DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) rk
                                 FROM rest_review
                                GROUP BY member_id) a
                        WHERE rk = 1)
 ORDER BY review_date, review_text