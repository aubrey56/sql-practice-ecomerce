-- 1. Create the customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT,
    country TEXT,
    signup_date DATE
);

-- 2. Create the orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 3. Insert sample data into customers
INSERT INTO customers (customer_id, name, city, country, signup_date) VALUES
(1, 'Alice Smith', 'New York', 'USA', '2024-01-15'),
(2, 'Bob Jones', 'London', 'UK', '2024-02-01'),
(3, 'Charlie Brown', 'Toronto', 'Canada', '2024-02-10'),
(4, 'Diana Prince', 'New York', 'USA', '2024-03-05'),
(5, 'Evan Wright', 'London', 'UK', '2024-03-20');

-- 4. Insert sample data into orders
INSERT INTO orders (order_id, customer_id, order_date, total_amount, status) VALUES
(101, 1, '2024-02-01', 150.00, 'Completed'),
(102, 1, '2024-03-10', 200.00, 'Completed'),
(103, 2, '2024-02-15', 50.00, 'Cancelled'),
(104, 3, '2024-03-01', 300.00, 'Completed'),
(105, 4, '2024-03-12', 120.00, 'Pending');
