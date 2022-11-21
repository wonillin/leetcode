WITH start_d AS(
SELECT start_date
      ,row_number() over() id
  FROM projects
 WHERE start_date NOT IN (SELECT end_date
                            FROM projects)
), end_d AS(
SELECT end_date
      ,row_number() over() id
  FROM projects
 WHERE end_date NOT IN (SELECT start_date
                          FROM projects)
)

SELECT start_date
      ,end_date
  FROM start_d
       INNER JOIN end_d ON start_d.id = end_d.id
 ORDER BY end_date - start_date, start_date