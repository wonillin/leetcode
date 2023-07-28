SELECT DISTINCT car_id
  FROM car_rental_company_rental_history
 WHERE MONTH(start_date) = 10
   AND car_id IN (SELECT car_id 
                    FROM car_rental_company_car
                   WHERE car_type = '세단')
 ORDER BY car_id DESC