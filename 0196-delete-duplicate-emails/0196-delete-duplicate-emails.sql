# Write your MySQL query statement below
DELETE p FROM Person p
JOIN Person q
ON p.id > q.id AND p.email = q.email
;