-- Active: 1699795418222@@127.0.0.1@3306@retail

CREATE TABLE barang(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    price INT(11) NOT NULL,
    stock INT(11) NOT NULL,
    description VARCHAR(255) NOT NULL,
    category_id INT(11),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE categories (
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
);


CREATE TABLE customer(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL
);

CREATE TABLE orders(
    id INT(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    status ENUM('paid', 'unpaid') NOT NULL,
    total INT(11) NOT NULL,
    date DATE DEFAULT CURRENT_TIMESTAMP
)

