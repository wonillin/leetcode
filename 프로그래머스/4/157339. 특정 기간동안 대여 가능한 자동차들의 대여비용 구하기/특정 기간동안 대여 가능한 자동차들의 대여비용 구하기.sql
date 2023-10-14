WITH cte AS
(SELECT car_id 
      ,car_type
      ,daily_fee
  FROM car_rental_company_car
 WHERE car_id NOT IN (SELECT car_id
                        FROM car_rental_company_rental_history
                       WHERE '2022-11' BETWEEN DATE_FORMAT(start_date, '%Y-%m') AND DATE_FORMAT(end_date, '%Y-%m'))
   AND car_type REGEXP '세단|SUV')
            
SELECT car_id
      ,p.car_type
      ,ROUND((REGEXP_REPLACE(duration_type, '[가-힣]', ' ') * daily_fee) * (1 - (discount_rate * 0.01))) fee
  FROM car_rental_company_discount_plan p 
       INNER JOIN cte ON p.car_type = cte.car_type
 WHERE REGEXP_REPLACE(duration_type, '[가-힣]', ' ') = 30
 GROUP BY car_id, car_type
 HAVING fee >= 500000 
    AND fee < 2000000
 ORDER BY fee DESC, car_type, car_id DESC