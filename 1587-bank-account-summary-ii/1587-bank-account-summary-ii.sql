SELECT u.name,
SUM(amount) as balance
FROM Users u
JOIN Transactions t
ON u.account = t.account
GROUP BY u.name
HAVING balance > 10000
;
