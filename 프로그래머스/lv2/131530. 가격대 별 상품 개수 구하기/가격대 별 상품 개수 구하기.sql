-- 코드를 입력하세요
select left((price / 10000), 1) * 10000  price_group
      ,count(product_id) products
from product
group by truncate(price, -4)
order by truncate(price, -4)