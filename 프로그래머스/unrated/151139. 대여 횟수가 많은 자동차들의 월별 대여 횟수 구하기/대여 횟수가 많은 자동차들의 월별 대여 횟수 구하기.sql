WITH cte AS
(SELECT DISTINCT MONTH(start_date) month
       ,car_id 
       ,COUNT(*) OVER(PARTITION BY car_id, MONTH(start_date)) records
       ,COUNT(*) OVER(PARTITION BY car_id) all_records
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
)

SELECT month
      ,car_id
      ,records
  FROM cte
 WHERE all_records >= 5
   AND records >= 1
 ORDER BY month, car_id DESC
 