-- ROW_NUMBER: Assign row number to each order per customer based on order date
SELECT 
    customer_id,
    order_id,
    order_timestamp,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_timestamp) AS order_number
FROM Orders;

-- RANK: Rank products by total amount spent in descending order
SELECT 
    product_id,
    SUM(total_amount) AS total_sales,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS product_rank
FROM Orders
GROUP BY product_id;

-- DENSE_RANK: Same as above, but ranks tied products without skipping numbers
SELECT 
    product_id,
    SUM(total_amount) AS total_sales,
    DENSE_RANK() OVER (ORDER BY SUM(total_amount) DESC) AS product_rank
FROM Orders
GROUP BY product_id;

-- LAG: Compare a customer's current and previous order date
SELECT 
    customer_id,
    order_id,
    order_timestamp,
    LAG(order_timestamp) OVER (PARTITION BY customer_id ORDER BY order_timestamp) AS previous_order
FROM Orders;

-- NTILE: Divide all orders into 4 performance quartiles based on total_amount
SELECT 
    order_id,
    total_amount,
    NTILE(4) OVER (ORDER BY total_amount DESC) AS sales_quartile
FROM Orders;

