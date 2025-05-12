-- Create users table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

-- Insert sample users (hashed passwords ideally)
INSERT INTO users (username, password_hash) VALUES 
('admin', SHA2('securepassword', 256));

-- Validate login
SELECT * FROM users WHERE username = 'admin' AND password_hash = SHA2('securepassword', 256);
