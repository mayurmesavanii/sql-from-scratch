-- Single column index

CREATE INDEX idx_customer_email
ON Customer (email);

EXPLAIN ANALYZE 
select * from customer WHERE email = 'alice@example.com';

EXPLAIN ANALYZE
SELECT * FROM customer
WHERE email LIKE 'alice%';

-- Multi column index

CREATE INDEX idx_orders_customer_timestamp
ON Orders (customer_id, order_timestamp);

-- Partial index: For orders > ₹500 only
CREATE INDEX idx_orders_highvalue
ON Orders (total_amount)
WHERE total_amount > 500;