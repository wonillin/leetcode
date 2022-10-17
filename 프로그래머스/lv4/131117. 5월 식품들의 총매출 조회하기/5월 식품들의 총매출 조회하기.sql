-- 코드를 입력하세요
select fp.product_id
      ,fp.product_name
      ,sum(amount) * price total_sales
from food_product fp
     inner join food_order fo on fp.product_id = fo.product_id
where produce_date between '2022-05-01 00:00:00' and '2022-05-31 23:59:59'
group by fp.product_id
order by total_sales desc, fp.product_id