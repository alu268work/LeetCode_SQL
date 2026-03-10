WITH CTE AS
(
SELECT id,
id - ROW_NUMBER() OVER(ORDER BY id) AS grp,
visit_date,
people
FROM Stadium
WHERE people >= 100
),
valid_groups AS (
    SELECT
        grp
    FROM cte
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
SELECT
    c.id,
    c.visit_date,
    c.people
FROM cte c
JOIN valid_groups v
    ON c.grp = v.grp
ORDER BY c.visit_date ASC;