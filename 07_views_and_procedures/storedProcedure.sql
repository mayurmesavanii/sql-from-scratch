-- Stored procedure

CREATE OR REPLACE PROCEDURE insert_order(
    in_customer_id INT,
    in_product_id INT,
    in_quantity INT,
    in_amount DECIMAL,
    in_order_rating DECIMAL(3, 1),
    in_length DECIMAL(5, 2),
    in_width DECIMAL(5, 2),
    in_delivery_timestamp TIMESTAMP
)
LANGUAGE SQL
AS $$
    INSERT INTO Orders (
        customer_id,
        product_id,
        total_quantity,
        total_amount,
        order_rating,
        length,
        width,
        order_timestamp,
        delivery_timestamp
    )
    VALUES (
        in_customer_id,
        in_product_id,
        in_quantity,
        in_amount,
        in_order_rating,
        in_length,
        in_width,
        NOW(),                 -- Automatically sets current timestamp
        in_delivery_timestamp
    );
$$;

-- reviewing existing order before calling
select * from orders WHERE customer_id=2;

-- inserting order by calling the function
CALL insert_order(
    2,        -- customer_id
    4,        -- product_id
    3,        -- quantity
    499.99,   -- total_amount
    4.5,      -- order_rating
    15.5,     -- length
    10.2,     -- width
    '2025-07-10 15:30:00'  -- delivery_timestamp
);

