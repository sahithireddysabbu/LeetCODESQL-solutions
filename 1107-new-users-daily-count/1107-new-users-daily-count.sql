WITH CTE AS (SELECT USER_ID,MIN(ACTIVITY_DATE) X,ACTIVITY FROM Traffic
WHERE activity='login'
GROUP BY USER_ID)
SELECT X login_date,COUNT(*) AS user_count  FROM CTE
WHERE X>= DATE_SUB('2019-06-30', INTERVAL 90 DAY)
  AND X <= '2019-06-30'
AND activity='login'
GROUP BY X;