# Write your MySQL query statement below
select product_id
      ,product_name
from product
where product_id not in (select pd.product_id
                         from product pd
                                left join sales sa on pd.product_id = sa.product_id
                         where sa.product_id is null or sale_date not between '2019-01-01' and '2019-03-31')


                                         