WITH CTE AS
(
    SELECT player_id,
    MIN(event_date) as first_login
    FROM Activity
    GROUP BY player_id
)
,NEXT_DAY AS
(
    SELECT a.player_id
    FROM Activity a
    JOIN CTE c
    ON a.player_id = c.player_id
    AND a.event_date = DATE_ADD(c.first_login, INTERVAL 1 DAY) 
)
SELECT 
ROUND(COUNT(DISTINCT n.player_id)/COUNT(DISTINCT c.player_id),2) as fraction
FROM CTE c
LEFT JOIN NEXT_DAY n
ON n.player_id = c.player_id
;