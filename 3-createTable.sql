-- Active: 1699795418222@@127.0.0.1@3306@retail

-- Buat tabel kategori
CREATE TABLE categories (
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
);

-- Buat table barang
CREATE TABLE barang(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    price INT(11) NOT NULL,
    stock INT(11) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category_id INT(11),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Buat tabel customer
CREATE TABLE customer(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL
);

-- buat tabel orders
CREATE TABLE orders(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    status ENUM('paid', 'unpaid') NOT NULL,
    total INT(11) NOT NULL,
    date DATE DEFAULT CURRENT_TIMESTAMP
);

-- Buat table order_details
CREATE TABLE order_details(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    order_id INT(11) NOT NULL,
    product_id INT(11) NOT NULL,
    quantity INT(11) NOT NULL,
    price INT(11) NOT NULL,
    subtotal INT(11) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES barang(id)
);
