-- Show sales stats per product
SELECT 
    product_id,
    SUM(total_amount) AS total_sales,
    AVG(order_rating) AS avg_rating,
    MAX(total_amount) AS highest_sale
FROM Orders
GROUP BY product_id;

-- Get overall price stats of products
SELECT 
    COUNT(*) AS total_products,
    SUM(price) AS total_price_value,
    AVG(price) AS average_price,
    MIN(price) AS cheapest,
    MAX(price) AS most_expensive
FROM Products;