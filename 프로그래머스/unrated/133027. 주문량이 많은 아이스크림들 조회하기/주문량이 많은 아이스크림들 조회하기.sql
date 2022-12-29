-- 코드를 입력하세요
SELECT fh.flavor
  FROM first_half fh
       LEFT JOIN (SELECT flavor
                        ,SUM(total_order) total_order
                    FROM july
                   GROUP BY flavor) july ON fh.flavor = july.flavor
 ORDER BY fh.total_order + july.total_order DESC
 LIMIT 3


 