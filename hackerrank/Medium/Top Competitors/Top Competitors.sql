SELECT s.hacker_id
      ,h.name
  FROM submissions s
       INNER JOIN hackers h ON s.hacker_id = h.hacker_id
       INNER JOIN challenges c ON s.challenge_id = c.challenge_id
       INNER JOIN difficulty d ON c.difficulty_level = d.difficulty_level
                               AND s.score = d.score
 GROUP BY s.hacker_id, h.name
HAVING COUNT(DISTINCT s.challenge_id) > 1
 ORDER BY COUNT(DISTINCT s.challenge_id) DESC, s.hacker_id