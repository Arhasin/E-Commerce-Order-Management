*A SQL Project for Managing Customers, Products, and Orders*

OVERVIEW
This project provides a basic E-Commerce Order Management System using SQL. It demonstrates database creation, schema design, foreign key relationships, indexing, sample data insertion, and querying for insightful reports. The system helps manage customers, products, and orders efficiently.

FEATURES
1. Database Setup: Creates a structured EcommerceDB database.
2. Schema Design: Tables for customers, products, and orders with relationships.
3. Sample Data Insertion: Populates tables with example customers and products.
4. Queries for Insights: Fetches order details, linking customers to purchased products.
5. Data Integrity: Uses foreign keys to maintain relationships between entities.

SCHEMA OVERVIEW
Customers (customer_id, name, email)
Products (product_id, name, price)
Orders (order_id, customer_id, product_id, order_date)

EXAMPLE Query
Retrieve order details with customer names:

SQL:
SELECT orders.order_id, customers.name AS customer, products.name AS product, products.price 
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id 
JOIN products ON orders.product_id = products.product_id;


FUTURE ENHANCEMENTS
1. Add order status tracking
2. Implement stored procedures for automated reports
3. Expand schema with inventory management
