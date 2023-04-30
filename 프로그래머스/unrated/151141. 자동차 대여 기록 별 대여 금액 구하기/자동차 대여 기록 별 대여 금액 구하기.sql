WITH cte AS
(SELECT history_id
      ,car_type
      ,daily_fee
      ,DATEDIFF(end_date, start_date) + 1 rental_date
  FROM car_rental_company_car cc
       LEFT JOIN car_rental_company_rental_history cr ON cc.car_id = cr.car_id
 WHERE car_type = '트럭'
)

SELECT history_id 
      ,MIN(fee) fee
  FROM 
(SELECT history_id
      ,CASE WHEN rental_date < duration_type THEN FLOOR(daily_fee * rental_date)
            ELSE FLOOR(discount_rate * daily_fee * rental_date)
        END fee
  FROM
(SELECT history_id
      ,daily_fee
      ,rental_date
      ,REGEXP_REPLACE(duration_type,'[가-힣]','') duration_type
      ,1 - (discount_rate * 0.01)  discount_rate
  FROM cte
       LEFT JOIN car_rental_company_discount_plan dp ON cte.car_type = dp.car_type) a ) b
 GROUP BY history_id
 ORDER BY FEE DESC, HISTORY_ID DESC
 
 
# SELECT 
#     HISTORY_ID,
#     MIN(FEE) AS FEE
#     FROM (
#         SELECT rh.HISTORY_ID,
#             CASE
#                 WHEN DATEDIFF(END_DATE, START_DATE) + 1 < SUBSTRING_INDEX(dp.DURATION_TYPE, '일', 1) THEN (DATEDIFF(END_DATE, START_DATE) + 1) * c.DAILY_FEE
#                 ELSE (DATEDIFF(END_DATE, START_DATE) + 1) * c.DAILY_FEE * (100 - SUBSTRING_INDEX(dp.DISCOUNT_RATE, '%', 1)) / 100
#             END AS FEE
#         FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY rh
#         JOIN CAR_RENTAL_COMPANY_CAR c
#         ON  rh.CAR_ID = c.CAR_ID
#         JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN dp
#         ON c.CAR_TYPE = dp.CAR_TYPE
#         WHERE c.CAR_TYPE = '트럭'
#         ) a
# GROUP BY HISTORY_ID
# ORDER BY FEE DESC, HISTORY_ID DESC