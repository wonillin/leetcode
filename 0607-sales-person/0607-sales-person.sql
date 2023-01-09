# Write your MySQL query statement below
WITH cte AS
(SELECT sales_id
  FROM orders o 
       INNER JOIN company c ON o.com_id = c.com_id
 WHERE name = 'RED')

 SELECT name
   FROM salesperson
  WHERE sales_id NOT IN (SELECT sales_id 
                           FROM cte)