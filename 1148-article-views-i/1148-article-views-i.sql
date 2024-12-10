SELECT DISTINCT v1.author_id AS id
FROM Views v1
JOIN Views v2
ON v1.author_id = v2.viewer_id
ORDER BY v1.author_id 
;