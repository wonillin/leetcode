# Write your MySQL query statement below
(SELECT name results
  FROM users u
       INNER JOIN movierating m ON u.user_id = m.user_id
 GROUP BY name
 ORDER BY COUNT(*) DESC, name
 LIMIT 1)

UNION ALL

(SELECT title results
  FROM movies m
       INNER JOIN movierating r ON m.movie_id = r.movie_id
 WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
 GROUP BY title
 ORDER BY AVG(rating) DESC, title
 LIMIT 1)

