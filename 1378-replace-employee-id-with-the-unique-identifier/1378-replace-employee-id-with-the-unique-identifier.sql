SELECT
COALESCE(u.unique_id,null) as unique_id,
e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
ON e.id = u.id
