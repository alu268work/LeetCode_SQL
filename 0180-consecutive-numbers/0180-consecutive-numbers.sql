# Write your MySQL query statement below
WITH CTE AS
(
    SELECT num,
    LEAD(num) OVER(ORDER BY id)as next_num,
    LEAD(num,2) OVER(ORDER BY id)as next_next_num
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM CTE
WHERE num = next_num && next_num = next_next_num
;