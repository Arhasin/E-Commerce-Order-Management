-- Add order status column
ALTER TABLE orders ADD COLUMN status VARCHAR(20) DEFAULT 'Pending';

-- Update order status
UPDATE orders SET status = 'Shipped' WHERE order_id = 1;

-- Query to show pending orders
SELECT * FROM orders WHERE status = 'Pending';
