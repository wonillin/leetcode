-- 코드를 입력하세요
SELECT history_id 
      ,car_id
      ,DATE_FORMAT(start_date, '%Y-%m-%d') start_date
      ,DATE_FORMAT(end_date, '%Y-%m-%d') end_date
      ,IF(TIMESTAMPDIFF(DAY, start_date, end_date) + 1 >= 30, '장기 대여', '단기 대여') 'rent_type' 
  FROM car_rental_company_rental_history
 WHERE start_date BETWEEN '2022-09-01 00:00:00' AND '2022-09-30 23:59:59'
 ORDER BY history_id DESC