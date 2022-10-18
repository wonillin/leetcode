with recursive time as(
select 0 as h
union all
select h + 1 from time where h < 23)

select h 'hour', count(hour(datetime)) 'count'
from time 
     left join animal_outs on h = hour(datetime)
group by h