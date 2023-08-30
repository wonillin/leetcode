WITH cte AS(
 SELECT member_id
       ,DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) dr
   FROM rest_review
  GROUP BY member_id
)


SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM member_profile m
       INNER JOIN rest_review r ON m.member_id = r.member_id
 WHERE m.member_id IN (SELECT member_id
                         FROM cte
                        WHERE dr = 1)
 ORDER BY review_date, review_text
 
     