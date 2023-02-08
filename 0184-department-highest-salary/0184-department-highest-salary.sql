# Write your MySQL query statement below
SELECT d.name department
      ,a.name employee
      ,salary
  FROM (SELECT name
              ,departmentid
              ,salary
              ,RANK() OVER(PARTITION BY departmentid ORDER BY salary DESC) rn
          FROM employee) a
        LEFT JOIN department d ON a.departmentid = d.id
 WHERE rn = 1

