-- 코드를 입력하세요

SELECT user_id
      ,nickname
      ,SUM(price) total_sales
  FROM used_goods_user ugu
       LEFT JOIN used_goods_board ugb ON ugu.user_id = ugb.writer_id
 WHERE status = 'DONE'
 GROUP BY writer_id
 HAVING SUM(price) >= 700000
 ORDER BY SUM(price)