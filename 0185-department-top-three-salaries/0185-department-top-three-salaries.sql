# Write your MySQL query statement below
WITH CTE AS
(
    SELECT d.name as Department,
    e.name as Employee,
    salary,
    DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS r
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
)

SELECT Department,
Employee,
salary 
FROM CTE
WHERE r <= 3
;
