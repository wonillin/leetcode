-- 코드를 입력하세요
SELECT warehouse_id
      ,warehouse_name
      ,address
      ,IF(freezer_yn IS NULL, 'N' , freezer_yn) freezer_yn
  FROM food_warehouse
 WHERE address REGEXP '경기도'
 ORDER BY warehouse_id