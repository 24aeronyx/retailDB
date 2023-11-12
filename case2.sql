-- Active: 1699795418222@@127.0.0.1@3306@retail

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT
    b.id AS product_id,
    b.name AS product_name,
    SUM(od.quantity) AS total_units_purchased
FROM
    order_details od
JOIN
    barang b ON od.product_id = b.id
GROUP BY
    product_id, product_name
ORDER BY
    total_units_purchased DESC
LIMIT 3;