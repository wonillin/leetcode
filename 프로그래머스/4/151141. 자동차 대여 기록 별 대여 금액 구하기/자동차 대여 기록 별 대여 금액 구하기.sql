WITH cte AS
(SELECT car_id
      ,car_type
      ,daily_fee
  FROM car_rental_company_car cc
 WHERE car_type = '트럭'),
cte2 AS
(SELECT REGEXP_REPLACE(duration_type, '[가-힣]', ' ') d_type
      ,car_type
      ,discount_rate
  FROM car_rental_company_discount_plan),
cte3 AS
(SELECT *
  FROM 
(SELECT history_id
        ,d_type
       ,DATEDIFF(end_date, start_date) + 1 date
       ,daily_fee
       ,discount_rate / 100 discount_rate
  FROM car_rental_company_rental_history rh
       INNER JOIN cte ON rh.car_id = cte.car_id
       INNER JOIN cte2 ON cte.car_type = cte2.car_type
 WHERE cte.car_type = '트럭') a)


SELECT history_id 
      ,CASE WHEN d_type > date THEN date * daily_fee 
            ELSE ROUND((date * daily_fee) * (1 - discount_rate) ) 
         END fee
  FROM cte3
 WHERE (history_id, ABS(d_type - date)) IN (SELECT history_id
                                                      ,MIN(ABS(d_type - date))
                                                  FROM cte3
                                                 GROUP BY history_id)    
 ORDER BY fee DESC, history_id DESC
                       

