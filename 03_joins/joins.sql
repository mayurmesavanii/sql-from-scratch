-- INNER JOIN: fetch order details with customer and product information

SELECT 
    Orders.order_id,
    Customer.customer_name,
    Products.name AS product_name,
    Orders.total_amount
FROM Orders
INNER JOIN Customer ON Orders.customer_id = Customer.customer_id
INNER JOIN Products ON Orders.product_id = Products.product_id;

-- LEFT JOIN: Show all orders, even if customer or product information is missing

SELECT 
    Orders.order_id,
    Customer.customer_name,
    Products.name AS product_name
FROM Orders
LEFT JOIN Customer ON Orders.customer_id = Customer.customer_id
LEFT JOIN Products ON Orders.product_id = Products.product_id;

-- RIGHT JOIN: Show all customers and their orders (if any exist)

SELECT 
    Orders.order_id,
    Customer.customer_name
FROM Orders
RIGHT JOIN Customer ON Orders.customer_id = Customer.customer_id;

-- FULL OUTER JOIN: Show all orders and all customers (even unmatched)

SELECT 
    Orders.order_id,            -- Order ID if matched or unmatched
    Customer.customer_name      -- Customer name if matched or unmatched
FROM Orders
FULL OUTER JOIN Customer ON Orders.customer_id = Customer.customer_id;
