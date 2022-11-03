SELECT CONCAT(Name, '(', LEFT(Occupation, 1),')') names
  FROM OCCUPATIONS
  
UNION

SELECT CONCAT('There are a total of ', COUNT(Name), " " ,LOWER(Occupation),  's.') names
  FROM OCCUPATIONS
 GROUP BY Occupation
 ORDER BY names