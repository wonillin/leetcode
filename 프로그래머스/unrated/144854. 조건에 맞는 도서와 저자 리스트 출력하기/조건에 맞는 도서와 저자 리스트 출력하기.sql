# '경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 
# 리스트를 출력하는 SQL문을 작성해주세요.

SELECT book_id
      ,author_name
      ,DATE_FORMAT(published_date, '%Y-%m-%d') published_date
  FROM book b 
       LEFT JOIN author a ON b.author_id = a.author_id
 WHERE category = '경제'
 ORDER BY published_date

