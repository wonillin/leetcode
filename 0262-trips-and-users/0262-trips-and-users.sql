# Write your MySQL query statement below
select tr.request_at 'Day'
      ,round(sum(if(tr.status = 'completed',0 ,1))/count(*),2) 'Cancellation Rate'
from trips tr
     inner join users us on tr.client_id = us.users_id
     inner join users us1 on tr.driver_id = us1.users_id 
where us.banned like 'No' and us1.banned like 'No' and tr.request_at between '2013-10-01' and '2013-10-03'
group by request_at
