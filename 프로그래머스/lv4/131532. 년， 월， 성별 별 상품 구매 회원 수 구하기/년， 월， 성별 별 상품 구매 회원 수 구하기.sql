# USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
# 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.

SELECT YEAR(sales_date) year
      ,MONTH(sales_date) month
      ,gender
      ,COUNT(DISTINCT os.user_id) users
  FROM user_info ui
       INNER JOIN online_sale os ON ui.user_id = os.user_id
 WHERE gender IS NOT NULL
 GROUP BY year, month, gender
 ORDER BY year, month, gender
 
 