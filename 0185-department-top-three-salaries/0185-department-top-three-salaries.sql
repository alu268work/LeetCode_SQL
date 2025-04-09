WITH CTE AS
(
    SELECT e.id,
    e.name as Employee,
    e.salary as Salary,
    d.name as Department,
    DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS r
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
    GROUP BY e.id,
    e.name,
    e.salary,d.name
)

SELECT Department, 
Employee,
Salary 
FROM CTE 
WHERE r <= 3
;