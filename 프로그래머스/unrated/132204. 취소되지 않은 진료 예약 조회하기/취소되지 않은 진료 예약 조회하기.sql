SELECT ap.apnt_no
      ,pt_name
      ,ap.pt_no
      ,ap.mcdp_cd
      ,dr_name
      ,apnt_ymd
  FROM appointment ap
       INNER JOIN patient pa ON ap.pt_no = pa.pt_no
       INNER JOIN doctor dr ON ap.mddr_id = dr.dr_id
 WHERE apnt_ymd BETWEEN '2022-04-13 00:00:00' AND '2022-04-13 23:59:59'
   AND apnt_cncl_yn = 'N'
 ORDER BY apnt_ymd


  
 