WITH CTE AS
(
    SELECT d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary,
    DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY salary DESC)AS r
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
    GROUP BY 1,2,3
)
SELECT Department,
Employee,
Salary
FROM CTE
WHERE r <= 3
;