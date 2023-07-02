 WITH cte AS
(SELECT visited_on
        ,SUM(amount) day_sum 
   FROM Customer 
  GROUP BY visited_on ),
cte1 AS
(SELECT visited_on
       ,SUM(amount) day_sum 
   FROM customer 
  GROUP BY visited_on )


SELECT a.visited_on visited_on 
      ,SUM(b.day_sum) amount
      ,ROUND(AVG(b.day_sum), 2) average_amount
FROM cte a, cte1 b
WHERE DATEDIFF(a.visited_on, b.visited_on) BETWEEN 0 AND 6
GROUP BY a.visited_on
HAVING COUNT(b.visited_on) = 7