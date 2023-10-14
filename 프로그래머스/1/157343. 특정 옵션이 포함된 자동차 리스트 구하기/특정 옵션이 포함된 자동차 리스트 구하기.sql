SELECT *
  FROM car_rental_company_car
 WHERE options REGEXP '네비'
 ORDER BY car_id DESC