-- 코드를 입력하세요
SELECT book_id
      ,DATE_FORMAT(published_date, '%Y-%m-%d') published_date
  FROM book
 WHERE YEAR(published_date) = '2021' 
   AND category REGEXP '인문'
 ORDER BY 2