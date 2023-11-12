-- Active: 1699795418222@@127.0.0.1@3306@retail
SELECT
    c.id AS customer_id,
    c.name AS customer_name,
    FORMAT(AVG(o.total), 2) AS average_transaction_amount
FROM
    customer c
JOIN
    orders o ON c.id = o.customer_id
WHERE
    o.date >= CURDATE() - INTERVAL 1 MONTH
GROUP BY
    customer_id, customer_name;


