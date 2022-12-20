-- 코드를 입력하세요
SELECT category
      ,SUM(bs.sales) total_sales
  FROM book b
       INNER JOIN book_sales bs ON b.book_id = bs.book_id
 WHERE DATE_FORMAT(sales_date, '%Y-%m') = '2022-01'
 GROUP BY category
 ORDER BY category