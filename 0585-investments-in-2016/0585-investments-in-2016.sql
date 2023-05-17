# Write your MySQL query statement below
WITH cte AS
(SELECT tiv_2015
  FROM insurance
 GROUP BY tiv_2015
 HAVING COUNT(*) > 1)

SELECT ROUND(SUM(tiv_2016), 2) tiv_2016
  FROM insurance
 WHERE CONCAT(lat, lon) IN (SELECT CONCAT(lat, lon)
                              FROM insurance
                             GROUP BY CONCAT(lat, lon)
                            HAVING COUNT(*) = 1)
   AND tiv_2015 IN (SELECT tiv_2015
                      FROM cte)



