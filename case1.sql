-- Active: 1699795418222@@127.0.0.1@3306@retail
-- Menyisipkan data ke dalam tabel orders (membuat pesanan baru)
INSERT INTO orders (status, total) VALUES ('unpaid', 0);

-- Mengambil ID pesanan yang baru saja dibuat
SET @order_id = LAST_INSERT_ID();

-- Menyisipkan detail pesanan (3 barang yang berbeda) ke dalam tabel order_details
-- Transaksi 1
INSERT INTO order_details (order_id, product_id, quantity, price, subtotal) VALUES
(@order_id, 1, 2, 5000000, 10000000), -- Laptop ASUS
(@order_id, 2, 1, 150000, 150000), -- Celana Jeans Pria
(@order_id, 3, 3, 3000, 9000); -- Pensil HB

-- Menyisipkan data ke dalam tabel orders (membuat pesanan baru)
INSERT INTO orders (status, total) VALUES ('paid', 0);
SET @order_id = LAST_INSERT_ID();

-- Menambahkan detail pesanan (barang yang berbeda) ke dalam tabel order_details
-- Transaksi 2
INSERT INTO order_details (order_id, product_id, quantity, price, subtotal) VALUES
(@order_id, 4, 1, 120000, 120000),     -- Sepatu Lari
(@order_id, 5, 2, 80000, 160000),      -- Beras Premium
(@order_id, 6, 1, 15000, 15000);  
-- Cek apakah 3 barang telah masuk dengan order_id yang sama?
SELECT
    od.id AS order_detail_id,
    od.order_id,
    b.name AS product_name,
    od.quantity,
    od.price,
    od.subtotal
FROM
    order_details od
JOIN
    barang b ON od.product_id = b.id;
