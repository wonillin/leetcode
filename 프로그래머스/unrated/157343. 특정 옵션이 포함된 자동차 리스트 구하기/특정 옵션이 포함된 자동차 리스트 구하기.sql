-- 코드를 입력하세요
select *
  from car_rental_company_car
 where options regexp '네비'
 order by car_id desc