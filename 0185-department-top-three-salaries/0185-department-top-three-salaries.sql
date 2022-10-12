# Write your MySQL query statement below
select de.name department
      ,em.name employee
      ,em.salary
from (select name
            ,salary
            ,departmentid
            ,dense_rank() over (partition by departmentid order by salary desc) rn
     from employee
     ) em
     inner join department de on em.departmentid = de.id
where rn <= 3