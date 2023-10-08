WITH cte AS
(SELECT *
       ,IF('2022-10-16' BETWEEN start_date AND end_date, 1, 2) a
  FROM car_rental_company_rental_history
 )
 
SELECT car_id
      ,IF(MIN(a) = 1, '대여중', '대여 가능') availabilty
  FROM CTE 
 GROUP BY 1
 ORDER BY 1 DESC