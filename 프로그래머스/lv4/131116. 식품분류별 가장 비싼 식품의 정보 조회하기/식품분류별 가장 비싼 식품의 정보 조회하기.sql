-- 코드를 입력하세요
with cte as(
select product_name
      ,row_number() over(partition by category order by price desc) rn
from food_product
where category in ('과자', '국', '김치', '식용유')
)

select category
      ,price max_price
      ,product_name
from food_product
where product_name in (select product_name 
                       from cte
                       where rn = 1)
order by price desc
