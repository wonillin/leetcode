# -- 코드를 입력하세요
SELECT MEMBER_NAME
      ,REVIEW_TEXT
      ,DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE
  FROM MEMBER_PROFILE MP
       INNER JOIN REST_REVIEW RR ON MP.MEMBER_ID = RR.MEMBER_ID
 WHERE RR.MEMBER_ID IN (SELECT MEMBER_ID 
                          FROM (SELECT MEMBER_ID
                                      ,DENSE_RANK() OVER (ORDER BY COUNT(MEMBER_ID) DESC) RN
                                  FROM REST_REVIEW
                                 GROUP BY MEMBER_ID) a
                         WHERE RN = 1)
ORDER BY REVIEW_DATE, REVIEW_TEXT


