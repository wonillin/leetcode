WITH cte AS
(SELECT member_id 
       ,DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) dr
   FROM rest_review
  GROUP BY member_id)
  
SELECT member_name
      ,review_text
      ,DATE_FORMAT(review_date, '%Y-%m-%d') review_date
  FROM rest_review rr 
       LEFT JOIN member_profile mp ON rr.member_id = mp.member_id
 WHERE rr.member_id IN (SELECT DISTINCT member_id 
                          FROM cte
                         WHERE dr = 1)
 ORDER BY review_date, review_text