# 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 
# 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력.
# 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬
SELECT b.author_id
      ,author_name
      ,category
      ,SUM(sales * price) total_sales
  FROM book b
       LEFT JOIN author a ON b.author_id = a.author_id
       LEFT JOIN book_sales bs ON b.book_id = bs.book_id
 WHERE DATE_FORMAT(sales_date, '%Y-%m') = '2022-01'
 GROUP BY author_id, category
 ORDER BY author_id, category DESC