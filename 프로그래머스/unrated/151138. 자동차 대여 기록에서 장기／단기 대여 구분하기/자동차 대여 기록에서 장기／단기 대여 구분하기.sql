SELECT history_id
      ,car_id
      ,DATE_FORMAT(start_date, '%Y-%m-%d') start_date
      ,DATE_FORMAT(end_date, '%Y-%m-%d') end_date
      ,IF(DATEDIFF(end_date, start_date) + 1 >= 30, '장기 대여', '단기 대여') rent_type
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-09-01' AND '2022-09-30'
 ORDER BY history_id DESC