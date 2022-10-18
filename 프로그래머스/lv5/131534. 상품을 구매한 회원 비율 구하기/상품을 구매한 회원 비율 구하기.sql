-- 코드를 입력하세요
select year(sales_date) 'year'
      ,month(sales_date) 'month'
      ,count(distinct os.user_id) puchased_user
      ,round(count(distinct os.user_id)/(select count(*) from user_info
                                          where year(joined) = '2021'), 1) puchased_ratio
from user_info ui
     left join online_sale os on ui.user_id = os.user_id
where joined between '2021-01-01 00:00:00' and '2021-12-31 23:59:59'
      and year(sales_date) is not null
group by year(sales_date), month(sales_date)
