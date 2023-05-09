-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/', board_id, '/', file_id, file_name, file_ext) file_path
  FROM used_goods_file
 WHERE board_id IN (SELECT board_id
                      FROM (SELECT board_id
                                  ,RANK() OVER(ORDER BY views DESC) rk
                              FROM used_goods_board) a
                    WHERE rk = 1
                   )
 ORDER BY file_id DESC
