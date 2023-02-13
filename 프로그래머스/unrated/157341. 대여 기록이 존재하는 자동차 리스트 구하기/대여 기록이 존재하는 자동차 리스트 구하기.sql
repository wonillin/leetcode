-- 코드를 입력하세요
SELECT DISTINCT cc.car_id
  FROM car_rental_company_car cc
       LEFT JOIN car_rental_company_rental_history rh ON cc.car_id = rh.car_id
 WHERE car_type LIKE '세단'
   AND start_date BETWEEN '2022-10-01' AND '2022-10-31'
 ORDER BY car_id DESC