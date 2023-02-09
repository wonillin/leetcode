SELECT MAX(CASE WHEN occupation REGEXP 'doc' THEN name END)
      ,MAX(CASE WHEN occupation REGEXP 'pro' THEN name END)
      ,MAX(CASE WHEN occupation REGEXP 'sing' THEN name END)
      ,MAX(CASE WHEN occupation REGEXP 'actor' THEN name END)
  FROM
(SELECT RANK() OVER(PARTITION BY occupation ORDER BY name) rn
       ,name
       ,occupation
  FROM occupations) a
 GROUP BY rn
