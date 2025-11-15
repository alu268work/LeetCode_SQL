WITH CTE AS
(
    SELECT *,
    RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)
SELECT d.name AS Department,
c.name AS Employee,
c.salary AS Salary
FROM CTE c
JOIN Department d
ON c.departmentId = d.id
WHERE rnk = 1
;
