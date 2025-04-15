WITH CTE AS
(
    SELECT num,
    LAG(num) OVER(ORDER BY id)as prev_num,
    LEAD(num) OVER(ORDER BY id)as next_num
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM CTE
WHERE num = prev_num AND num = next_num
;