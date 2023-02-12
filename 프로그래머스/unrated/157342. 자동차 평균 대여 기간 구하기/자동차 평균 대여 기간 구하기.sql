-- 코드를 입력하세요
SELECT car_id
      ,ROUND(AVG(DATEDIFF(DATE_ADD(end_date, INTERVAL 1 DAY), start_date)), 1) average_duration
  FROM car_rental_company_rental_history
 GROUP BY 1
 HAVING ROUND(AVG(DATEDIFF(DATE_ADD(end_date, INTERVAL 1 DAY), start_date)), 1) >= 7 
 ORDER BY average_duration DESC, car_id DESC

