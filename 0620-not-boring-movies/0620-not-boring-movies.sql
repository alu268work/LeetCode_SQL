SELECT *
FROM Cinema
WHERE id%2 != 0 AND description != 'boring'
ORDER by rating DESC
;