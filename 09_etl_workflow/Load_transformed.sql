-- Load cleaned/transformed data to the destination table
INSERT INTO Clean_Sales (
    customer_name,
    email,
    city,
    product_name,
    price,
    quantity,
    total_amount,
    order_date
)
SELECT
    customer_name,
    email,
    city,
    product_name,
    price,
    quantity,
    total_amount,
    order_date
FROM Cleaned_Sales_Data;

SELECT * FROM clean_sales;
