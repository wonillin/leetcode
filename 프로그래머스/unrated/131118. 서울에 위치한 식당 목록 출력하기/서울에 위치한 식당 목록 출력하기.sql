-- 코드를 입력하세요
SELECT ri.rest_id
      ,rest_name
      ,food_type
      ,favorites
      ,address
      ,round(avg(review_score), 2) score
from rest_info ri
     inner join rest_review rr on ri.rest_id  = rr.rest_id
group by rest_name
having address like '서울%'
order by score desc, favorites desc