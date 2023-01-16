# SELECT DISTINCT history_id
#       ,daily_fee * (DATEDIFF(end_date, start_date) + 1) , (IFNULL((SELECT REPLACE(DISCOUNT_RATE, '%', '')
#                                                                         FROM car_rental_company_discount_plan
#                                                                        WHERE CAR_TYPE = '트럭' AND DATEDIFF(END_DATE, START_DATE) + 1 >= REGEXP_REPLACE(duration_type, '[가-힣]','')
#                                                                        ORDER BY duration_type DESC
#                                                                        LIMIT 1
#                                                                        ), 0) * 0.01) fee
#  FROM car_rental_company_car cc
#       INNER JOIN car_rental_company_rental_history cr ON cc.car_id = cr.car_id
# WHERE cc.car_type = '트럭'
# ORDER BY fee DESC, history_id DESC
# SELECT REGEXP_REPLACE(duration_type, '[가-힣]','') duration_type
# FROM car_rental_company_car cc
#      INNER JOIN car_rental_company_rental_history cr ON cc.car_id = cr.car_id
#      INNER JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN cd ON cc.car_type = cd.car_type
# WHERE cc.CAR_TYPE = '트럭' AND DATEDIFF(END_DATE, START_DATE) + 1 >= REGEXP_REPLACE(duration_type, '[가-힣]','')
# ORDER BY duration_type DESC


SELECT HISTORY_ID, ROUND((DATEDIFF(END_DATE, START_DATE) + 1) * DAILY_FEE * (1 - (
    IFNULL((SELECT REPLACE(DISCOUNT_RATE, '%', '')
        FROM CAR_RENTAL_COMPANY_DISCOUNT_PLAN
        WHERE CAR_TYPE = CC.CAR_TYPE AND DATEDIFF(END_DATE, START_DATE) + 1 >= REPLACE(duration_type, '일 이상', '')
        ORDER BY REPLACE(DISCOUNT_RATE, '%', '') DESC
        LIMIT 1
    ), 0) * .01)), 0) FEE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
INNER JOIN CAR_RENTAL_COMPANY_CAR CC
USING(CAR_ID)
WHERE CAR_TYPE = '트럭'
ORDER BY FEE DESC, HISTORY_ID DESC;