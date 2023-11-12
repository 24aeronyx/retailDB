-- Active: 1699795418222@@127.0.0.1@3306@retail
UPDATE categories
SET
  name = 'Gaming',
  description = 'Device atau aksesoris keperluan gaming'
WHERE id = 2;

UPDATE barang
SET
  name = 'Headset Rexus',
  price = 12000,
  stock = 30,
  description = 'Headset Gaming dengan virtual surround 7.1',
  category_id = 2
WHERE id = 2;

UPDATE customer
SET
  name = 'Ariel',
  address = 'Jl. Silo',
  email = 'arielzz@example.com',
  contact = '085389899996'
WHERE id = 2;

UPDATE orders
SET
  status = 'paid',
  total = 50000,
  date = '2023-01-01'
WHERE id = 2;

UPDATE order_details
SET
  order_id = 2,
  product_id = 5,
  quantity = 25,
  price = 20000,
  subtotal = 200000
WHERE id = 2;

-- Mengupdate total pada tabel orders berdasarkan total harga barang dari order_details
UPDATE orders o
SET total = (
    SELECT SUM(subtotal)
    FROM order_details od
    WHERE od.order_id = o.id
)
WHERE o.id = 2; 
