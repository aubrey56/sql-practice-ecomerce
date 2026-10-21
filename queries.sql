-- Challenge 1: Completed orders over $100
SELECT * FROM orders 
WHERE status = 'Completed' AND total_amount > 100.00;

-- Challenge 2: Customer count per city
SELECT city, COUNT(customer_id) AS customer_count 
FROM customers 
GROUP BY city;

-- Challenge 3: Customer names with orders
SELECT c.name, o.order_id, o.total_amount 
FROM customers c 
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- Challenge 4: All customers and their orders (including 0 order customers)
SELECT c.name, o.order_id, o.total_amount 
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id;
