# Write your MySQL query statement below
(SELECT name results
  FROM movierating m
       INNER JOIN users u ON m.user_id = u.user_id
 GROUP BY name
 ORDER BY COUNT(name) DESC, name
 LIMIT 1)

UNION ALL

(SELECT title results
  FROM movierating m
       INNER JOIN movies ms ON m.movie_id = ms.movie_id
 WHERE created_at BETWEEN '2020-02-01' AND '2020-02-29'
 GROUP BY title
 ORDER BY AVG(rating) DESC, title
 LIMIT 1)


