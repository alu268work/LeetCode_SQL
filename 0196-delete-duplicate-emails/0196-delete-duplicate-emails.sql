DELETE p2 FROM Person p1
JOIN Person p2
ON p1.id < p2.id AND p1.email = p2.email
;