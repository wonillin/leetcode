# Write your MySQL query statement below
with cte as
(select id
      ,row_number() over (order by id) rn 
      ,visit_date
      ,people
from stadium
where people >= 100)

select id, visit_date, people
from cte
where id - rn in (select (id - rn) 
                  from cte
                  group by (id - rn)
                  having count(*) >= 3)