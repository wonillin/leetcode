-- 코드를 입력하세요
SELECT mcdp_cd '진료과코드'
      ,COUNT(mcdp_cd) '5월예약건수'
  FROM appointment
WHERE apnt_ymd BETWEEN '2022-05-01 00:00:00' AND '2022-05-31 23:59:59'
GROUP BY mcdp_cd
ORDER BY COUNT(mcdp_cd), mcdp_cd