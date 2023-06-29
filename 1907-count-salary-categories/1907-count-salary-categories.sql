# Write your MySQL query statement below
WITH cte AS
(SELECT CASE WHEN income < 20000 THEN 'Low Salary'
             WHEN income > 50000 THEN 'High Salary'
             ELSE 'Average Salary'
         END category
  FROM accounts),
cte1 AS
(SELECT 'Low Salary' category 
UNION
SELECT 'Average Salary' category 
UNION
SELECT 'High Salary' category)

SELECT cte1.category
      ,IF(cte.category IS NULL, 0, COUNT(*)) accounts_count
  FROM cte1
       LEFT JOIN cte ON cte1.category = cte.category
 GROUP BY category