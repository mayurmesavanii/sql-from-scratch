-- Basic select queries

select * from categories
select * from Orders
select * from Customer
select * from Products

-- Fetch all products priced above 50
SELECT * FROM Products
WHERE price > 20;

-- Fetch customers from New York city only
SELECT * FROM customer
WHERE city = 'New York';

-- Fetch customers sorted by name in descending format
SELECT customer_name, city FROM Customer
ORDER BY customer_name DESC;

-- Fectch all the order details where quantity is more than 2
SELECT * FROM Orders
WHERE total_quantity > 2;

-- Orders with quantity > 2 and rating above 4
SELECT customer_id, total_quantity, order_rating FROM Orders
WHERE total_quantity > 2 AND order_rating > 4;

-- Orders with quantity > 5 or amount > ₹100
SELECT * FROM Orders
WHERE total_quantity > 5 OR total_amount > 100;

-- Using WHERE and ORDER BY: fetch all orders with amount > ₹100, sorted by rating highest first
SELECT customer_id, order_id, total_amount, order_rating
FROM Orders
WHERE total_amount > 100
ORDER BY order_rating DESC;

-- Fetch products under ₹100 sorted alphabetically
SELECT name, price
FROM Products
WHERE price < 100
ORDER BY name;

-- Fetch products with no price
SELECT * FROM Products
WHERE price IS NULL;

-- Union: -- Combine product names and category names into one unified list
SELECT name FROM Products
UNION
SELECT name FROM Categories;
