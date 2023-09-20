
WITH cte AS(
 SELECT board_id
   FROM used_goods_board
  ORDER BY views DESC
  LIMIT 1
)


SELECT CONCAT('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) file_path
  FROM used_goods_file
 WHERE board_id IN (SELECT *
                      FROM cte)
 ORDER BY file_id DESC