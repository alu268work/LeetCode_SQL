# Write your MySQL query statement below
WITH CTE AS
(
    SELECT e.name AS Employee,
    d.name AS Department,
    d.id,
    e.salary as Salary,
   DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) as r
    FROM Employee e
    JOIN Department d
    ON e.departmentId = d.id
    GROUP BY e.name,
    d.name,d.id
)
SELECT Department,
Employee,
Salary
FROM CTE
WHERE r = 1
;


