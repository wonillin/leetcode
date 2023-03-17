-- 코드를 입력하세요
SELECT board_id
      ,writer_id
      ,title
      ,price
      ,CASE WHEN status REGEXP 'sale' THEN '판매중'
            WHEN status REGEXP 'reserved' THEN '예약중'
            ELSE '거래완료'
        END status
  FROM used_goods_board
 WHERE created_date = '2022-10-05'
 ORDER BY board_id DESC