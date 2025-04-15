CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
     SELECT salary
     FROM (
        SELECT salary, 
        DENSE_RANK() OVER(ORDER BY salary DESC)AS r
        FROM Employee
        )ranked
     WHERE r = n
     LIMIT 1
  );
END