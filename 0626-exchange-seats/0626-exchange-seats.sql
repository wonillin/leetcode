# Write your MySQL query statement below\

SELECT id
      ,CASE 
          WHEN id % 2 = 0 THEN a.before
          WHEN id % 2 != 0 AND a.after IS NULL THEN student
          ELSE a.after
        END 'student'
  FROM
     (SELECT * 
          ,LEAD(student) OVER (ORDER BY id) 'after'
          ,LAG(student) OVER (ORDER BY id) 'before' 
       FROM seat) a

