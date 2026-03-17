SELECT product_id,
product_name
FROM Product
WHERE product_id IN (
    SELECT product_id
    FROM Sales
    GROUP BY 1
    HAVING MIN(sale_date) >= '2019-01-01'
    AND MAX(sale_date) <= '2019-03-31'
)
;