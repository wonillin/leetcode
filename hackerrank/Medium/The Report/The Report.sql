SELECT IF(grade < 8, NULL, name)
      ,grade
      ,marks
  FROM Students s
       INNER JOIN grades ON marks BETWEEN min_mark AND max_mark 
 ORDER BY grade desc, name
 