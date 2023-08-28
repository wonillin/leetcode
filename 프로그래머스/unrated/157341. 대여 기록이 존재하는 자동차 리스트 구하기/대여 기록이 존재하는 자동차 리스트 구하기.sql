WITH cte AS(
 SELECT car_id
   FROM car_rental_company_car
  WHERE car_type = '세단'
)


SELECT DISTINCT car_id
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-10-01' AND '2022-10-31'
   AND car_id IN (SELECT *
                    FROM cte)
 ORDER BY car_id DESC