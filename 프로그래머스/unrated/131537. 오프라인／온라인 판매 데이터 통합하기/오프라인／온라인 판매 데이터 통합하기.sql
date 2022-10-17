-- 코드를 입력하세요
select date_format(sales_date, "%Y-%m-%d") sales_date
      ,product_id
      ,user_id
      ,sales_amount
from online_sale
where month(sales_date) = "3"
group by 1, 2, 3

union all

select date_format(sales_date, "%Y-%m-%d") sales_date
      ,product_id
      ,null as user_id
      ,sales_amount
from offline_sale
where month(sales_date) = "3"
group by 1, 2, 3
order by 1, 2, 3