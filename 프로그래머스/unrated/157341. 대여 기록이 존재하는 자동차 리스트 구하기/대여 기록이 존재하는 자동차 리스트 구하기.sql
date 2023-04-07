SELECT car_id
  FROM car_rental_company_car cc
 WHERE car_id IN (SELECT car_id
                    FROM car_rental_company_rental_history 
                   WHERE start_date BETWEEN '2022-10-01' AND '2022-10-31')
   AND car_type = '세단'
 ORDER BY car_id DESC