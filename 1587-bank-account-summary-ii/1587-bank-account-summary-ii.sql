# Write your MySQL query statement below
SELECT name
     ,SUM(amount) balance
FROM users 
     INNER JOIN transactions tr ON users.account = tr.account
GROUP BY name
HAVING SUM(amount) > 10000