# Write your MySQL query statement below
SELECT L1.num ConsecutiveNums
  FROM Logs l1
       INNER JOIN Logs L2 ON L1.id= L2.id + 1
       INNER JOIN Logs L3 ON L2.id = L3.id + 1 
 WHERE L1.num = L2.num AND L2.num = L3.num
 GROUP BY L1.num