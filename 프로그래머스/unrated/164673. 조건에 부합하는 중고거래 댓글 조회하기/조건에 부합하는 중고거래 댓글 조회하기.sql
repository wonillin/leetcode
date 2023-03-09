-- 코드를 입력하세요
SELECT title
      ,b.board_id
      ,reply_id
      ,r.writer_id
      ,r.contents
      ,DATE_FORMAT(r.created_date, '%Y-%m-%d') AS created_date
  FROM used_goods_board b
       INNER JOIN used_goods_reply r ON b.board_id = r.board_id
 WHERE b.created_date BETWEEN '2022-10-01' AND '2022-10-31'
 ORDER BY created_date, title