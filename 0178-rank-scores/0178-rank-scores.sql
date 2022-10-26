# Write your MySQL query statement below
SELECT score
      ,DENSE_RANK() OVER(ORDER BY SCORE DESC) 'rank'
  FROM Scores