WITH cte AS
(SELECT writer_id 
      ,COUNT(*) cnt
  FROM used_goods_board
 GROUP BY writer_id
 HAVING cnt >= 3)
 
 
SELECT user_id
      ,nickname
      ,CONCAT(city, ' ', street_address1, ' ', street_address2) '전체주소'
      ,CONCAT(SUBSTRING(tlno, 1, 3), '-', SUBSTRING(tlno, 4, 4), '-', SUBSTRING(tlno, 8, 4)) '전화번호'
  FROM used_goods_user 
 WHERE user_id IN (SELECT writer_id
                     FROM cte)
 ORDER BY user_id DESC