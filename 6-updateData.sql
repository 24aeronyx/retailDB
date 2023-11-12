-- Active: 1699795418222@@127.0.0.1@3306@retail
-- Mengupdate total pada tabel orders berdasarkan total harga barang dari order_details
UPDATE orders o
SET total = (
    SELECT SUM(subtotal)
    FROM order_details od
    WHERE od.order_id = o.id
)
WHERE o.id = 2; -- Ganti 1 dengan ID pesanan yang ingin Anda update
