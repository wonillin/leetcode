# Write your MySQL query statement below
select user_id buyer_id
      ,join_date
      ,sum(case when year(order_date) = '2019' then 1 else 0 end) orders_in_2019
from users us   
     left join orders od on us.user_id = od.buyer_id
group by user_id 
order by user_id