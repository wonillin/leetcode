-- 코드를 입력하세요
WITH cte AS
(SELECT DISTINCT cc.car_id
      ,cc.car_type
      ,daily_fee
      ,CASE WHEN duration_type = '30일 이상' THEN ((1 - (discount_rate * 0.01)) * daily_fee) * LEFT(duration_type, 2) END fee
  FROM car_rental_company_car cc
       LEFT JOIN car_rental_company_rental_history rh ON cc.car_id = rh.car_id
       LEFT JOIN car_rental_company_discount_plan dp ON cc.car_type = dp.car_type
 WHERE cc.car_id NOT IN (SELECT car_id
                           FROM car_rental_company_rental_history
                          WHERE '2022-11' BETWEEN DATE_FORMAT(start_date, '%Y-%m') AND DATE_FORMAT(end_date, '%Y-%m'))
   AND cc.car_type REGEXP '세단|suv')          

SELECT car_id
      ,car_type
      ,ROUND(fee) fee
  FROM cte
 WHERE (fee >= 500000 AND fee < 2000000)
 ORDER BY fee DESC, car_type, car_id DESC