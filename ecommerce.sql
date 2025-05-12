-- Create database
CREATE DATABASE EcommerceDB;
USE EcommerceDB;

-- Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample data
INSERT INTO customers (name, email) VALUES ('Alice', 'alice@example.com'), ('Bob', 'bob@example.com');
INSERT INTO products (name, price) VALUES ('Laptop', 1200.99), ('Smartphone', 699.50);
INSERT INTO orders (customer_id, product_id, order_date) VALUES (1, 1, '2025-05-12');

-- Query to fetch orders with customer names
SELECT orders.order_id, customers.name AS customer, products.name AS product, products.price 
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id 
JOIN products ON orders.product_id = products.product_id;
