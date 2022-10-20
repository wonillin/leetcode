-- 코드를 입력하세요
SELECT ap.apnt_no
      ,pt_name
      ,pa.pt_no
      ,dc.mcdp_cd
      ,dr_name
      ,apnt_ymd
  FROM patient pa
     INNER JOIN appointment ap ON pa.pt_no = ap.pt_no
     INNER JOIN doctor dc ON ap.mddr_id = dc.dr_id
WHERE ap.mcdp_cd = 'CS'  
  AND ap.apnt_cncl_yn = 'N' 
  AND apnt_ymd BETWEEN '2022-04-13 00:00:00' AND '2022-04-13 23:59:59'
ORDER BY ap.apnt_ymd, pa.pt_no