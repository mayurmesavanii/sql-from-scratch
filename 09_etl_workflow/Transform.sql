CREATE TEMP TABLE Cleaned_Sales_Data AS
SELECT
    INITCAP(TRIM(customer_name)) AS customer_name,
    LOWER(TRIM(NULLIF(email, ''))) AS email,
    INITCAP(TRIM(NULLIF(city, ''))) AS city,
    INITCAP(TRIM(product_name)) AS product_name,

    -- Properly clean and convert price
    CASE 
        WHEN TRIM(price) ILIKE 'null' OR TRIM(price) = '' THEN NULL
        ELSE TRIM(price)::NUMERIC(10,2)
    END AS price,

    -- Properly clean and convert quantity
    CASE 
        WHEN TRIM(quantity) ILIKE 'null' OR TRIM(quantity) = '' THEN NULL
        ELSE TRIM(quantity)::INT
    END AS quantity,

    -- Handle different date formats
    CASE
        WHEN order_date ~ '^\d{4}-\d{2}-\d{2}$' THEN order_date::DATE
        WHEN order_date ~ '^\d{2}/\d{2}/\d{4}$' THEN TO_DATE(order_date, 'MM/DD/YYYY')
        WHEN order_date ~ '^\d{4}/\d{2}/\d{2}$' THEN TO_DATE(order_date, 'YYYY/MM/DD')
        WHEN order_date ~ '^\d{2}-\d{2}-\d{4}$' THEN TO_DATE(order_date, 'DD-MM-YYYY')
        ELSE NULL
    END AS order_date,

    -- Calculate total amount only when both price and quantity are valid
    CASE 
        WHEN 
            (TRIM(price) ILIKE 'null' OR TRIM(price) = '') OR 
            (TRIM(quantity) ILIKE 'null' OR TRIM(quantity) = '')
        THEN NULL
        ELSE TRIM(price)::NUMERIC(10,2) * TRIM(quantity)::INT
    END AS total_amount
FROM ETL_Raw_Sales_Staging;

SELECT * FROM Cleaned_Sales_Data;