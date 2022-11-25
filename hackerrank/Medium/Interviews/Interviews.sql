SELECT cn.contest_id
      ,cn.hacker_id
      ,cn.name
      ,SUM(sum_total_sub)
      ,SUM(sum_total_acc)
      ,SUM(sum_total_view)
      ,SUM(sum_total_uni_view)
  FROM contests cn 
       INNER JOIN colleges co ON cn.contest_id = co.contest_id
       INNER JOIN challenges ch ON co.college_id = ch.college_id 
       LEFT JOIN (SELECT challenge_id
                        ,SUM(total_views) sum_total_view
                        ,SUM(total_unique_views) sum_total_uni_view
                    FROM view_stats
                GROUP BY challenge_id) sv ON ch.challenge_id = sv.challenge_id
       LEFT JOIN (SELECT challenge_id
                        ,SUM(total_submissions) sum_total_sub
                        ,SUM(total_accepted_submissions) sum_total_acc
                    FROM submission_stats
                   GROUP BY challenge_id) ss ON ch.challenge_id = ss.challenge_id
  GROUP BY cn.contest_id, cn.hacker_id, cn.name
 HAVING SUM(sum_total_sub) + SUM(sum_total_acc) + SUM(sum_total_uni_view) + SUM(sum_total_view) > 0
  ORDER BY cn.contest_id