SELECT car_id 
      ,IF(availablity = 1, '대여중', '대여 가능') availablity
  FROM
(SELECT car_id 
      ,SUM(IF('2022-10-16' BETWEEN start_date AND end_date, '1', '0')) availablity
  FROM car_rental_company_rental_history
 GROUP BY car_id) a
 ORDER BY car_id DESC