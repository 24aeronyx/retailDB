-- Active: 1699795418222@@127.0.0.1@3306@retail
SELECT
    c.id AS category_id,
    c.name AS category_name,
    COUNT(b.id) AS total_products
FROM
    categories c
LEFT JOIN
    barang b ON c.id = b.category_id
GROUP BY
    c.id, c.name
ORDER BY
    total_products DESC
LIMIT 1;
