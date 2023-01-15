-- 코드를 입력하세요
WITH cte AS
(SELECT MONTH(start_date) month
      ,car_id
      ,COUNT(*) records
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-08-01' AND '2022-10-31'
 GROUP BY month, car_id
 ORDER BY month, car_id DESC)


SELECT * 
  FROM cte
 WHERE car_id IN (SELECT car_id 
                    FROM (SELECT car_id
                                ,SUM(records) sum_r
                            FROM cte
                           GROUP BY car_id) a
                           WHERE sum_r >= 5)