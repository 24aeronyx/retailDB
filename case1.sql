-- Active: 1699795418222@@127.0.0.1@3306@retail
-- Menyisipkan data ke dalam tabel orders (membuat pesanan baru)
INSERT INTO orders (status, total) VALUES ('unpaid', 0);

-- Mengambil ID pesanan yang baru saja dibuat
SET @order_id = LAST_INSERT_ID();

-- Menyisipkan detail pesanan (3 barang yang berbeda) ke dalam tabel order_details
INSERT INTO order_details (order_id, product_id, quantity, price, subtotal) VALUES
(@order_id, 1, 2, 10, 20), -- Barang pertama (ID produk 1, jumlah 2, harga 10 per barang)
(@order_id, 2, 1, 15, 15), -- Barang kedua (ID produk 2, jumlah 1, harga 15 per barang)
(@order_id, 3, 3, 8, 24); -- Barang ketiga (ID produk 3, jumlah 3, harga 8 per barang)
