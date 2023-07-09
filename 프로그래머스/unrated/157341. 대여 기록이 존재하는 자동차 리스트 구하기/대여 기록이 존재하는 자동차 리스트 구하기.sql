WITH cte AS
(SELECT DISTINCT car_id
  FROM car_rental_company_rental_history
 WHERE MONTH(start_date) = 10)


SELECT car_id
  FROM car_rental_company_car
 WHERE car_type = '세단'
   AND car_id IN (SELECT *
                    FROM cte)
  ORDER BY car_id DESC