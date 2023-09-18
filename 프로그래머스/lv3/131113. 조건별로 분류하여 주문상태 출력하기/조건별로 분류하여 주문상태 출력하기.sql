SELECT order_id
      ,product_id
      ,DATE_FORMAT(out_date, '%Y-%m-%d') out_date
      ,IF(out_date IS NULL , '출고미정', IF(out_date <= '2022-05-01', '출고완료', '출고대기')) '출고여부'
  FROM food_order
 ORDER BY order_id