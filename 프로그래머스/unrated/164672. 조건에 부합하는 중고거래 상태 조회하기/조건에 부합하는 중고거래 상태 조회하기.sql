SELECT board_id
      ,writer_id
      ,title
      ,price
      ,IF(status = 'DONE', '거래완료', IF(status = 'SALE', '판매중', '예약중')) status
  FROM used_goods_board
 WHERE created_date = '2022-10-05'
 ORDER BY board_id DESC