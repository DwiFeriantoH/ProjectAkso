-- Create user dan beri privileges
CREATE USER IF NOT EXISTS 'datauser'@'%' IDENTIFIED BY 'datapassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'datauser'@'%';
FLUSH PRIVILEGES;

-- Create a sample table for demonstration
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100),
    enrolled_date DATE
);

-- Insert some sample data
INSERT INTO students (name, email, course, enrolled_date) VALUES 
('Feri', 'ferianto@example.com', 'Pure Mathematics', '2024-05-18'),
('Dhani', 'dhanial@example.com', 'Computer Science', '2024-07-09'),
('Hamzah', 'hamzah@example.com', 'Data Science', '2024-08-15');