-- 코드를 입력하세요
SELECT mcdp_cd '진료과코드'
      ,count(mcdp_cd) '5월예약건수'
from appointment
where apnt_ymd between '2022-05-01 00:00:00' and '2022-05-31 23:59:59'
group by mcdp_cd
order by count(mcdp_cd), mcdp_cd