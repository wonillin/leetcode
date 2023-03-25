-- 코드를 입력하세요
SELECT board_id
      ,writer_id
      ,title
      ,price
      ,IF(status REGEXP 'done', '거래완료',(IF (status REGEXP 'sale', '판매중', '예약중'))) 'status'
  FROM used_goods_board
 WHERE created_date = '2022-10-05'
 ORDER BY board_id DESC
    