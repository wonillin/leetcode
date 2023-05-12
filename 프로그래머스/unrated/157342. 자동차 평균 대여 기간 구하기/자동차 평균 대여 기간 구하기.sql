-- 코드를 입력하세요
SELECT DISTINCT car_id
      ,ROUND(AVG(duration), 1) average_duration
  FROM 
(SELECT car_id
      ,DATEDIFF(end_date, start_date) + 1 duration
  FROM car_rental_company_rental_history) a
 GROUP BY car_id
 HAVING average_duration >= 7
 ORDER BY average_duration DESC, car_id DESC