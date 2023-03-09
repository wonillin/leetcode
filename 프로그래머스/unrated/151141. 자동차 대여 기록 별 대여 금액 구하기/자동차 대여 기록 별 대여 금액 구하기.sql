WITH cte AS
(SELECT history_id
       ,daily_fee
       ,(discount_rate * 0.01) discount_rate
       ,REGEXP_REPLACE(duration_type, '[가-힣]','') duration_type
       ,DATEDIFF(end_date, start_date) + 1 rent_day
  FROM car_rental_company_car cc
       INNER JOIN car_rental_company_rental_history cr ON cc.car_id = cr.car_id
       INNER JOIN car_rental_company_discount_plan cdp on cc.car_type = cdp.car_type
 WHERE cc.car_type = '트럭')

SELECT DISTINCT history_id
      ,CASE WHEN rent_day < 7 THEN ROUND(daily_fee * rent_day)
            WHEN rent_day < 30 THEN ROUND(daily_fee * rent_day * (1 - 0.05))
            WHEN rent_day < 90 THEN ROUND(daily_fee * rent_day * (1 - 0.08))
            ELSE ROUND(daily_fee * rent_day * (1 - 0.15))
            END fee
 FROM cte
 ORDER BY fee DESC, history_id DESC