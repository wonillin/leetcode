-- 코드를 입력하세요
select 
    case
        when price between 0 and 9999 then '0'
        when price between 10000 and 19999 then '10000'
        when price between 20000 and 29999 then '20000'
        when price between 30000 and 39999 then '30000'
        when price between 40000 and 49999 then '40000'
        when price between 50000 and 59999 then '50000'
        when price between 60000 and 69999 then '60000'
        when price between 70000 and 79999 then '70000'
        when price between 80000 and 89999 then '80000'
    end price_group,
    case
        when price between 0 and 9999 then count(product_id)
        when price between 10000 and 19999 then count(product_id)
        when price between 20000 and 29999 then count(product_id)
        when price between 30000 and 39999 then count(product_id)
        when price between 40000 and 49999 then count(product_id)
        when price between 50000 and 59999 then count(product_id)
        when price between 60000 and 69999 then count(product_id)
        when price between 70000 and 79999 then count(product_id)
        when price between 80000 and 89999 then count(product_id)
    end products
from product
group by 1
order by 1
