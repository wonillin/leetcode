# Write your MySQL query statement below
SELECT p.product_id
      ,ROUND(SUM(price * units) / SUM(units), 2) average_price
  FROM prices p
       INNER JOIN unitssold u ON p.product_id = u.product_id
 WHERE purchase_date >= start_date
   AND purchase_date <= end_date
 GROUP BY p.product_id