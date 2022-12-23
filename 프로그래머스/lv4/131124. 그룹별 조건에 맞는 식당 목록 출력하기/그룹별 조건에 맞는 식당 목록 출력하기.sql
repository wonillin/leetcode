# -- 코드를 입력하세요
WITH cte AS
(SELECT member_id
       ,COUNT(member_id) cnt
  FROM rest_review
 GROUP BY member_id)

SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM member_profile m
       INNER JOIN rest_review r ON m.member_id = r.member_id
 WHERE m.member_id IN (SELECT member_id
                       FROM (SELECT member_id
                                    ,cnt
                                    ,DENSE_RANK() OVER(ORDER BY cnt DESC) dr
                               FROM cte) a
                              WHERE dr = 1) 
 ORDER BY review_date, review_text

 
 