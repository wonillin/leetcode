-- 코드를 입력하세요
SELECT HOUR(datetime) HOUR
      ,COUNT(datetime) HOUR
  FROM animal_outs
 WHERE HOUR(datetime) BETWEEN 9 AND 19
 GROUP BY hour
 ORDER BY hour