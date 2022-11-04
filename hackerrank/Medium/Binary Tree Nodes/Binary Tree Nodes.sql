SELECT DISTINCT b1.N
      ,CASE 
          WHEN b1.P IS NULL THEN 'Root'
          WHEN b2.P IS NULL THEN 'Leaf'
          ELSE 'Inner'
        END
  FROM BST b1
       LEFT JOIN BST b2 ON b1.N = b2.P 
 ORDER BY b1.N