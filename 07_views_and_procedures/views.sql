-- Create a view showing detailed order summaries

CREATE VIEW OrderSummary AS
SELECT 
    o.order_id,
    c.customer_name,
    p.name AS product_name,
    o.total_quantity,
    o.total_amount,
    o.order_timestamp,
    o.delivery_timestamp
FROM Orders o
JOIN Customer c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id;

-- utilizing created view

SELECT * FROM OrderSummary WHERE total_amount > 100;