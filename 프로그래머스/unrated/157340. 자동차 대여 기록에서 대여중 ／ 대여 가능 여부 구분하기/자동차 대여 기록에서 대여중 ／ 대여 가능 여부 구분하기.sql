-- 코드를 입력하세요
WITH cte AS
(SELECT  car_id
       ,start_date
       ,end_date
      ,IF('2022-10-16' BETWEEN start_date AND end_date, '대여중' ,'대여 가능') availability
  FROM car_rental_company_rental_history
), cte2 as(SELECT car_id
      ,GROUP_CONCAT(availability) availability
  FROM cte 
 GROUP BY 1)
 
SELECT car_id
     ,IF(availability REGEXP '대여중', '대여중', '대여 가능') availability
 FROM cte2
 ORDER BY car_id DESC
