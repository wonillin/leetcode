-- 코드를 입력하세요
select order_id
      ,product_id
      ,date_format(out_date, '%Y-%m-%d') out_date
      ,case 
        when out_date < '2022-05-01 23:59:59' then '출고완료'
        when out_date is null then '출고미정'
        else '출고대기'
       end '출고여부'
from food_order
order by order_id 
