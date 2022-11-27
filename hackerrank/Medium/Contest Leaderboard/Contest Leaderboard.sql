SELECT hacker_id
      ,name
      ,SUM(max_score)
  FROM (SELECT s.hacker_id
              ,name
              ,challenge_id
              ,MAX(score) max_score
          FROM submissions s
               INNER JOIN hackers h ON s.hacker_id = h.hacker_id 
         GROUP BY hacker_id , name, challenge_id) a
 GROUP BY 1, 2
HAVING SUM(max_score) > 0
 ORDER BY SUM(max_score) DESC, hacker_id
