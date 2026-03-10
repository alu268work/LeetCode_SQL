WITH CTE AS
(
    SELECT requester_id as id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as id
    FROM RequestAccepted
),
friends_count AS (
SELECT id,
COUNT(*) AS num
FROM CTE
GROUP BY id
)
SELECT id,
num 
FROM friends_count
ORDER BY num DESC LIMIT 1;