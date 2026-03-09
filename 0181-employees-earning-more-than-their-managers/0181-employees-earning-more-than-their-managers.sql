# Write your MySQL query statement below
SELECT e2.name AS Employee
FROM employee e1
JOIN employee e2
ON e1.id = e2.managerId
AND e2.salary > e1.salary
;
