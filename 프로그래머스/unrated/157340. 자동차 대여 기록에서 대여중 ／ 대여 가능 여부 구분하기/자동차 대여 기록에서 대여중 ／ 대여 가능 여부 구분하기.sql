-- 코드를 입력하세요
SELECT car_id
      ,IF(SUM(availability) >= 1, '대여중', '대여 가능') availability
  FROM
(SELECT car_id
      ,IF('2022-10-16' BETWEEN start_date AND end_date, '1', '0') availability
  FROM car_rental_company_rental_history) a
 GROUP BY car_id
 ORDER BY car_id DESC
 
 
