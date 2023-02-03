SELECT month
      ,car_id 
      ,records
  FROM (SELECT DISTINCT MONTH(start_date) month
               ,car_id
               ,COUNT(*) OVER(PARTITION BY car_id, MONTH(start_date)) records
               ,COUNT(*) OVER(PARTITION BY car_id) all_records
           FROM car_rental_company_rental_history
          WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31') a
 WHERE all_records >= 5
 ORDER BY month, car_id DESC

# SELECT month
#      ,car_id
#      ,records
#   FROM 
# (SELECT DISTINCT MONTH(START_DATE) AS MONTH
#         , CAR_ID
#         , COUNT(*) OVER(PARTITION BY MONTH(START_DATE), CAR_ID) AS RECORDS
#         , COUNT(*) OVER(PARTITION BY CAR_ID) AS FILTER
#     FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
#     WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
#    ORDER BY 1, 2 DESC) a
#   WHERE filter >= 5

 
