-- Delete all
DELETE FROM categories; ALTER TABLE categories AUTO_INCREMENT = 1;
DELETE FROM categories WHERE id = 1;
DELETE FROM barang; ALTER TABLE barang AUTO_INCREMENT = 1;
DELETE FROM barang WHERE id = 1;
DELETE FROM customer; ALTER TABLE customer AUTO_INCREMENT = 1;
DELETE FROM customer WHERE id = 1;
DELETE FROM orders; ALTER TABLE orders AUTO_INCREMENT = 1;
DELETE FROM orders WHERE id = 1;
DELETE FROM order_details; ALTER TABLE order_details AUTO_INCREMENT = 1;
DELETE FROM order_details WHERE id = 1;
