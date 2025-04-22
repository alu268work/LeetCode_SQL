SELECT 
CASE WHEN id%2 != 0 AND id IN (SELECT max(id) FROM Seat) THEN id
WHEN id%2 = 0 THEN id -1
ELSE id+1 END as id,
student
FROM Seat
ORDER BY id
;