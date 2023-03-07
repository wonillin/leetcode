-- 코드를 입력하세요
SELECT b.author_id
      ,author_name
      ,category
      ,SUM(price * sales) total_sales
  FROM book b
       LEFT JOIN author a ON b.author_id = a.author_id
       LEFT JOIN book_sales bs ON b.book_id = bs.book_id
 WHERE sales_date BETWEEN '2022-01-01' AND '2022-01-31'
 GROUP BY author_id, category
 ORDER BY author_id, category DESC
 