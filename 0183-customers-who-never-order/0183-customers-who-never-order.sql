# Write your MySQL query statement below
SELECT name customers
  FROM customers 
 WHERE id NOT IN (SELECT customerid 
                    FROM orders)