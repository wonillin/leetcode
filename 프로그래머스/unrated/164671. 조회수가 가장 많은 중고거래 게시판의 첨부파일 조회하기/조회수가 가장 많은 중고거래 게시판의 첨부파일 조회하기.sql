-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) file_path
  FROM used_goods_file
 WHERE board_id IN (SELECT board_id
                      FROM used_goods_board
                     WHERE views IN (SELECT MAX(views)
                                       FROM used_goods_board))
 ORDER BY file_id DESC