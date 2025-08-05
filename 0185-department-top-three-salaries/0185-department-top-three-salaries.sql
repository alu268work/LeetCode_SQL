# Write your MySQL query statement below
# Write your MySQL query statement below
WITH CTE AS
(
    SELECT *,
    DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) AS r
    FROM Employee
)
SELECT d.name AS Department,
c.name AS Employee,
c.salary
FROM CTE c
JOIN Department d
ON c.departmentId = d.id
WHERE r<=3
;
