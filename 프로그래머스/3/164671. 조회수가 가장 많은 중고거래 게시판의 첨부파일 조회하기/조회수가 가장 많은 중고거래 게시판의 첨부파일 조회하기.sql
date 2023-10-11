WITH cte AS
(SELECT board_id
      ,DENSE_RANK() OVER(ORDER BY views DESC) dr
  FROM used_goods_board ugb
 GROUP BY board_id)
 
SELECT CONCAT('/home/grep/src/', board_id , '/', file_id, file_name, file_ext) file_path
  FROM used_goods_file
 WHERE board_id IN (SELECT board_id
                      FROM cte
                     WHERE dr = 1)
 ORDER BY file_id DESC