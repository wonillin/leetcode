WITH cte AS
(SELECT history_id
      ,car_type
      ,daily_fee
      ,DATEDIFF(end_date, start_date) + 1 duration
   FROM car_rental_company_car cc
        LEFT JOIN car_rental_company_rental_history crh ON cc.car_id = crh.car_id
  WHERE car_type = '트럭'),
cdp AS
(SELECT car_type
       ,discount_rate
       ,SUBSTRING_INDEX(duration_type, '일', 1) d_type
   FROM car_rental_company_discount_plan cdp)
   
   
SELECT history_id
      ,CASE WHEN duration < d_type THEN FLOOR(duration * daily_fee)
            ELSE FLOOR((duration * daily_fee) * (1 - (discount_rate * 0.01)))
         END fee
  FROM cte
       LEFT JOIN cdp ON cte.car_type = cdp.car_type
 WHERE (history_id, ABS(d_type - duration)) IN (SELECT history_id
                                                      ,MIN(ABS(d_type - duration))
                                                  FROM cte 
                                                       LEFT JOIN cdp ON cte.car_type = cdp.car_type
                                                 GROUP BY 1)
 
 ORDER BY fee DESC, history_id DESC