SELECT w1.id
FROM WEATHER w1
JOIN Weather w2
ON w1.temperature > w2.temperature
and DATEDIFF(w1.recordDate,w2.recordDate) =1
;
