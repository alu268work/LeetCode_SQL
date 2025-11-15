WITH CTE AS
(
    SELECT departmentId,
    DENSE_RANK()OVER(PARTITION BY departmentId ORDER BY salary DESC) AS rank_sal,
    salary,
    name
    FROM Employee
)
SELECT d.name AS Department,
c.name AS Employee,
c.salary AS Salary
FROM CTE c
JOIN Department d
ON c.departmentId = d.id
WHERE c.rank_sal <= 3
;