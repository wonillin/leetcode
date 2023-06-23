# Write your MySQL query statement below
SELECT contest_id 
      ,ROUND((COUNT(contest_id) / (SELECT COUNT(user_id) FROM users)) * 100, 2) percentage
  FROM register
 GROUP BY contest_id
 ORDER BY percentage DESC, contest_id