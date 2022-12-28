-- 코드를 입력하세요
SELECT dr_name
      ,dr_id
      ,mcdp_cd
      ,DATE_FORMAT(hire_ymd, '%Y-%m-%d') hire_ymd
  FROM doctor
 WHERE mcdp_cd REGEXP 'CS|GS'
 ORDER BY hire_ymd DESC, dr_name