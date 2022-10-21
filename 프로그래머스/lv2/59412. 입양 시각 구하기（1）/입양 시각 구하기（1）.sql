-- 코드를 입력하세요
SELECT HOUR(datetime) 'HOUR'
      ,COUNT(HOUR(datetime)) 'COUNT'
  FROM animal_outs
 WHERE DATE_FORMAT(datetime, '%T') BETWEEN '09:00' AND '19:59'
 GROUP BY HOUR(datetime)
 ORDER BY HOUR(datetime)