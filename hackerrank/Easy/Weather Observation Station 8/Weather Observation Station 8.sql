SELECT CITY
  FROM STATION
 WHERE CITY REGEXP ('^a|^e|^i|^o|^u')
   AND CITY REGEXP ('a$|e$|i$|o$|u$')