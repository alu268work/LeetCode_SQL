WITH CTE AS
(SELECT 
id,
num,
LEAD(num) OVER(ORDER BY id) as nex_num,
LEAD(num,2) OVER(ORDER BY id) as next_next_num
FROM Logs
)

SELECT 
DISTINCT c.num as ConsecutiveNums
FROM CTE c
WHERE c.num = c.nex_num AND c.nex_num = c.next_next_num
;