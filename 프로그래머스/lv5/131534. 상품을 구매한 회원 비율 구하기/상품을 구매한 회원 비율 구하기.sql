SELECT YEAR(sales_date) year
      ,MONTH(sales_date) month
      ,COUNT(DISTINCT user_id) puchased_users
      ,ROUND(COUNT(DISTINCT user_id) / (SELECT COUNT(user_id)
                                         FROM user_info
                                        WHERE YEAR(joined) = '2021'), 1) puchased_ratio
  FROM online_sale
 WHERE user_id IN (SELECT user_id 
                     FROM user_info
                    WHERE YEAR(joined) = '2021')
 GROUP BY year, month
 ORDER BY year, month