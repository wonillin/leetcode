# Write your MySQL query statement below
select name, if(distance, sum(distance), 0) travelled_distance
from users 
     left join rides on users.id = rides.user_id
group by users.id
order by travelled_distance desc, name