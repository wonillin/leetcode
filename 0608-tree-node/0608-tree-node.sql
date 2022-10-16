# Write your MySQL query statement below
select distinct t.id,
    case
        when t.p_id is null then 'Root'
        when t1.id is not null then 'Inner'
        when t1.id is null then 'Leaf'
    end type
from tree t
     left join tree t1 on t.id = t1.p_id  

