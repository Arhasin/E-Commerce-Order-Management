-- Create inventory table
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample data
INSERT INTO inventory (product_id, stock_quantity) VALUES 
(1, 50), -- Laptop stock
(2, 100); -- Smartphone stock

-- Query to check stock availability
SELECT products.name, inventory.stock_quantity 
FROM inventory 
JOIN products ON inventory.product_id = products.product_id;

-- Update stock after a purchase
UPDATE inventory SET stock_quantity = stock_quantity - 1 WHERE product_id = 1;
