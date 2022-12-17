-- 코드를 입력하세요
SELECT a.author_id
      ,a.author_name
      ,b.category
      ,SUM(sales * price) total_sales
  FROM book b
       INNER JOIN author a ON b.author_id = a.author_id
       INNER JOIN book_sales bs ON b.book_id = bs.book_id
 WHERE bs.sales_date BETWEEN '2022-01-01 00:00:00' AND '2022-01-31 23:59:59'
 GROUP BY author_id, author_name, category
 ORDER BY author_id, category DESC