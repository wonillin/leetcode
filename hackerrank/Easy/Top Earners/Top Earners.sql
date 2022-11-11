SELECT salary * months earnings
      ,COUNT(salary * months) cnt
  FROM employee
 GROUP BY earnings
 HAVING earnings = (SELECT MAX(salary * months) FROM employee)