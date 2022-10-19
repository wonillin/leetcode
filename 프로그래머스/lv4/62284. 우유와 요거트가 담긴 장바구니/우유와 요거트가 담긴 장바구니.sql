-- 코드를 입력하세요
with cte as
(SELECT cart_id
      ,group_concat(name)
from cart_products
group by cart_id
having find_in_set('Milk', group_concat(name)) 
       and find_in_set('Yogurt', group_concat(name)))

select cart_id
from cart_products
where cart_id in (select cart_id from cte)
group by cart_id
order by 1


