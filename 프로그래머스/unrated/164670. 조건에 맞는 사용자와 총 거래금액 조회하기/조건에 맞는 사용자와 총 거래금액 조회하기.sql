-- 코드를 입력하세요
SELECT u.user_id
      ,u.nickname
      ,CONCAT(city, ' ', street_address1 , ' ', street_address2)
      ,CONCAT(LEFT(tlno, 3), '-', MID(tlno, 4, 4), '-', RIGHT(tlno, 4)) '전화번호'
  FROM used_goods_board b
       INNER JOIN used_goods_user u ON b.writer_id = u.user_id
 GROUP BY user_id
 HAVING COUNT(*) >= 3
 ORDER BY user_id DESC