# Write your MySQL query statement below
# Write your MySQL query statement below\
with cte as
(select id, student
      ,lag(student, 1) over (order by id) a
      ,lead(student, 1) over (order by id) b
from seat)

select id,
    case
        when id%2 = 0 then a 
        when id%2 != 0 and b is null then student
        else b
    end student
from cte