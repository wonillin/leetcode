# Write your MySQL query statement below
SELECT ROUND(COUNT(*) / (SELECT COUNT(*) FROM delivery) * 100, 2) immediate_percentage
  FROM delivery
 WHERE order_date = customer_pref_delivery_date