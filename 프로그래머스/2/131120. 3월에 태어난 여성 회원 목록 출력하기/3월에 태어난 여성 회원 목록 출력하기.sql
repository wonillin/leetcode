-- 3월 생일 여성 / 전화번호 IS NOT NULL / member_id 
SELECT member_id
      ,member_name
      ,gender
      ,DATE_FORMAT(date_of_birth, '%Y-%m-%d') date_of_birth
  FROM member_profile
 WHERE MONTH(date_of_birth) = 3
   AND gender = 'W'
   AND tlno IS NOT NULL
  ORDER BY member_id