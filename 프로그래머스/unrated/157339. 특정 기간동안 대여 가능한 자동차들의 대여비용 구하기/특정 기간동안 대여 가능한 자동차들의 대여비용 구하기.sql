WITH cte AS
(SELECT DISTINCT car_id
       ,daily_fee
       ,car_type
  FROM car_rental_company_car
 WHERE car_id NOT IN (SELECT DISTINCT car_id
                        FROM car_rental_company_rental_history crh
                       WHERE '2022-11' BETWEEN DATE_FORMAT(start_date, '%Y-%m') AND DATE_FORMAT(end_date, '%Y-%m')
                     )
   AND car_type REGEXP '세단|SUV')
   

   
SELECT cte.car_id
      ,cdp.car_type
      ,ROUND((1 - (discount_rate * 0.01))  * (daily_fee * 30)) fee
  FROM cte
       LEFT JOIN car_rental_company_discount_plan cdp ON cte.car_type = cdp.car_type
 WHERE LEFT(duration_type, 2) = 30
 GROUP BY 1, 2
 HAVING fee >= 500000
    AND fee < 2000000
 ORDER BY fee DESC, car_type, car_id DESC