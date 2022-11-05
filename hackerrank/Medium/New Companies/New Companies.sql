SELECT c.company_code
      ,founder
      ,COUNT(DISTINCT lead_manager_Code)
      ,COUNT(DISTINCT senior_manager_Code)
      ,COUNT(DISTINCT manager_Code)
      ,COUNT(DISTINCT employee_Code)
  FROM Company c
       INNER JOIN Employee e ON c.company_code = e.company_code 
  GROUP BY c.company_code, founder
  ORDER BY c.company_code
