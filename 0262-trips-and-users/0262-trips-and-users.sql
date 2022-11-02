# Write your MySQL query statement below
SELECT request_at 'Day'
      ,ROUND(SUM(IF(status != 'completed', 1 ,0))/COUNT(*), 2) 'Cancellation Rate'
  FROM Trips t 
       INNER JOIN Users u ON t.client_id = u.users_id
       INNER JOIN Users u1 ON t.driver_id = u1.users_id
 WHERE request_at BETWEEN '2013-10-01' AND '2013-10-03'
   AND (u.banned = 'No' AND u1.banned = 'No')
 GROUP BY request_at
 ORDER BY request_at