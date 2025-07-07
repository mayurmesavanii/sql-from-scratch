-- CASE LOGIC: Categorize products based on price range

SELECT 
    name,
    price,
    CASE 
        WHEN price IS NULL THEN 'Price Missing'
        WHEN price < 50 THEN 'Budget'
        WHEN price < 100 THEN 'Mid-range'
        ELSE 'Premium'
    END AS price_category
FROM Products;
