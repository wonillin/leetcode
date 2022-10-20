-- 코드를 입력하세요
select ap.apnt_no
      ,pt_name
      ,pa.pt_no
      ,dc.mcdp_cd
      ,dr_name
      ,apnt_ymd
from patient pa
     inner join appointment ap on pa.pt_no = ap.pt_no
     inner join doctor dc on ap.mddr_id = dc.dr_id
where ap.mcdp_cd = 'CS' and 
      ap.apnt_cncl_yn = 'N' and
      apnt_ymd between '2022-04-13 00:00:00' and '2022-04-13 23:59:59'
order by ap.apnt_ymd, pa.pt_no



