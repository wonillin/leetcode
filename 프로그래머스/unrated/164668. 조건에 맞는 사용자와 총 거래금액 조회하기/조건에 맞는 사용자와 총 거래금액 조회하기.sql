-- 코드를 입력하세요
SELECT user_id
      ,nickname
      ,SUM(price) total_sales
  FROM used_goods_board b
       INNER JOIN used_goods_user u ON b.writer_id = u.user_id
 WHERE status = 'DONE'
 GROUP BY user_id
 HAVING SUM(price) >= 700000
 ORDER BY total_sales