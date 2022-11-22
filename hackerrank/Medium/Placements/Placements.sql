SELECT name
  FROM students s
       INNER JOIN packages p1 ON s.id = p1.id
       INNER JOIN friends f ON s.id = f.id
       INNER JOIN packages p2 ON f.friend_id = p2.id
 WHERE p1.salary < p2.salary
 ORDER BY p2.salary