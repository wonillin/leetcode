# Write your MySQL query statement below
WITH cte AS
(SELECT *
   FROM students s
        CROSS JOIN subjects sb)

SELECT c.student_id
      ,student_name
      ,c.subject_name
      ,IF(e.student_id IS NULL, 0, COUNT(*)) attended_exams
  FROM cte c
       LEFT JOIN examinations e ON c.student_id = e.student_id
                               AND c.subject_name = e.subject_name
 GROUP BY student_id, subject_name
 ORDER BY student_id