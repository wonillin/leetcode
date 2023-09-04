# 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문을 작성해주세요. 
# 첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬해주세요.
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