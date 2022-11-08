-- 학생 개개인들이 생성한 총 챌린지 수 테이블 만들기
WITH counter AS(
    SELECT h.hacker_id hacker_id
          ,name
          ,COUNT(*) cnt
      FROM hackers h
           INNER JOIN challenges c ON h.hacker_id = c.hacker_id
     GROUP BY h.hacker_id ,name
)

SELECT *
  FROM counter 
 WHERE cnt = (SELECT MAX(cnt) 
                FROM counter)
    OR cnt IN (SELECT cnt 
                 FROM (SELECT cnt
                             ,COUNT(*) cnt1 --챌린지 수 그룹화해서 카운트
                         FROM counter
                        GROUP BY cnt) a 
                WHERE cnt1 = 1)
 ORDER BY cnt DESC, hacker_id