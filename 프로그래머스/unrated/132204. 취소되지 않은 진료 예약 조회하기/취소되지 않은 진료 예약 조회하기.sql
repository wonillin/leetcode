-- 코드를 입력하세요
SELECT apnt_no
      ,pt_name
      ,p.pt_no
      ,a.mcdp_cd
      ,dr_name
      ,apnt_ymd
  FROM patient p 
       LEFT JOIN appointment a ON p.pt_no = a.pt_no
       LEFT JOIN doctor d ON a.mddr_id = d.dr_id
 WHERE apnt_ymd BETWEEN '2022-04-13 00:00:00' AND '2022-04-13 23:59:59' 
   AND apnt_cncl_yn = 'N'
 ORDER BY apnt_ymd 