-- Inserting initial categories into the Categories table
INSERT INTO Categories (name)
VALUES 
    ('Electronics'),
    ('Clothing'),
    ('Home and Kitchen'),
    ('Books'),
    ('Sports and Outdoors');

-- Inserting products into the Products table
INSERT INTO Products (
  name, price, description, tags, category_id, 
  supplier
) 
VALUES 
  (
    'Laptop', NULL, 'High-performance laptop for professionals', 
    'electronics, portable, tech', 
    1, 'SupplierA'
  ), 
  (
    'Headphones', 129.99, 'Over-ear wireless headphones', 
    'electronics, audio, accessories', 
    1, 'SupplierB'
  ), 
  (
    'Backpack', 49.99, 'Stylish and durable backpack for everyday use', 
    'fashion, accessories, travel', 
    2, NULL
  ), 
  (
    'Coffee Maker', NULL, 'Automatic drip coffee maker with programmable timer', 
    'home, kitchen, appliances', 3, 
    NULL
  ), 
  (
    'Fitness Tracker', 79.99, 'Water-resistant fitness tracker with heart rate monitor', 
    'electronics, fitness, wearables', 
    1, NULL
  ), 
  (
    'The Great Gatsby', 14.99, 'Classic novel by F. Scott Fitzgerald', 
    'books, literature, fiction', 4, 
    'BookPublisherA'
  ), 
  (
    'Yoga Mat', 19.99, 'Non-slip yoga mat for home workouts', 
    'sports, fitness, accessories', 
    5, 'SportsSupplierA'
  ), 
  (
    'Blender', 39.99, 'High-speed blender for smoothies and shakes', 
    'home, kitchen, appliances', 3, 
    'KitchenCo'
  ), 
  (
    'T-Shirt', 15.99, 'Cotton t-shirt with custom print design', 
    'clothing, fashion, casual', 2, 
    'SupplierC'
  ), 
  (
    'Resistance Bands', 25.50, 'Set of resistance bands for strength training', 
    'sports, workout, gear', 5, 'SportsSupplierB'
  );


-- Inserting sample customers into the Customer table
INSERT INTO Customer (
  customer_name, email, phone_number, 
  address, city
) 
VALUES 
  (
    'Alice Johnson', 'alice@example.com', 
    '123-456-7890', '123 Main St', 'Cityville'
  ), 
  (
    'Bob Smith', 'bob@example.com', '987-654-3210', 
    '456 Oak Ave', 'Townsville'
  ), 
  (
    'Charlie Brown', 'charlie@example.com', 
    '555-123-4567', '789 Pine Ln', 'New York'
  ), 
  (
    'David White', 'david@example.com', 
    '222-333-4444', '567 Maple Dr', 
    'NYC'
  ), 
  (
    'Eva Black', 'eva@example.com', '999-888-7777', 
    '890 Cedar Rd', 'Big Apple'
  ), 
  (
    'Frank Green', 'frank@example.com', 
    '111-222-3333', '123 Elm St', 'Gotham City'
  ), 
  (
    'Grace Hopper', 'grace@example.com', 
    '444-555-6666', '101 Tech Blvd', 
    'Cityville'
  ), 
  (
    'Hank Pym', 'hank@example.com', '321-654-0987', 
    '202 Ant St', 'New York'
  ), 
  (
    'Ivy Blue', 'ivy@example.com', '777-888-9999', 
    '303 Rose Ave', 'Gotham City'
  ), 
  (
    'Jack Ryan', 'jack@example.com', 
    '666-777-8888', '404 Shadow Rd', 
    'Cityville'
  ), 
  (
    'Karen Page', 'karen@example.com', 
    '555-666-7777', '505 Light St', 
    'Townsville'
  ), 
  (
    'Liam Neeson', 'liam@example.com', 
    '333-444-5555', '606 Taken Pl', 
    'Big Apple'
  ), 
  (
    'Monica Geller', 'monica@example.com', 
    '111-999-8888', '707 Central Perk', 
    'NYC'
  ), 
  (
    'Nathan Drake', 'nathan@example.com', 
    '222-111-0000', '808 Treasure Way', 
    'New York'
  ), 
  (
    'Olivia Wilde', 'olivia@example.com', 
    '000-111-2222', '909 Star Ave', 
    'Gotham City'
  ), 
  (
    'Peter Parker', 'peter@example.com', 
    '999-000-1111', '101 Web St', 'NYC'
  );


  -- Inserting more sample orders into the Orders table
INSERT INTO Orders (
  customer_id, product_id, total_quantity, 
  total_amount, order_rating, length, 
  width, order_timestamp, delivery_timestamp
) 
VALUES 
  (
    1, 1, 5, 120.50, 4.5, 2.3, 1.8, '2023-01-15 10:30:00', 
    '2023-01-16 15:45:00'
  ), 
  (
    2, 2, 3, 75.25, 3.8, 1.5, 1.2, '2023-02-03 14:20:00', 
    '2023-02-05 11:10:00'
  ), 
  (
    3, 3, 7, 210.75, 4.2, 2.8, 2.0, '2023-03-12 08:45:00', 
    '2023-03-14 09:30:00'
  ), 
  (
    1, 4, 2, 50.00, 4.0, 1.8, 1.5, '2023-04-05 12:15:00', 
    '2023-04-07 18:20:00'
  ), 
  (
    4, 5, 1, 79.99, 4.7, 1.2, 1.0, '2023-05-10 09:00:00', 
    '2023-05-11 17:00:00'
  ), 
  (
    5, 6, 2, 29.98, 4.9, 0.5, 0.3, '2023-06-01 13:10:00', 
    '2023-06-03 11:45:00'
  ), 
  (
    6, 7, 1, 19.99, 3.5, 1.0, 0.8, '2023-06-15 16:00:00', 
    '2023-06-16 14:00:00'
  ), 
  (
    7, 8, 3, 119.97, 4.1, 2.5, 2.1, '2023-07-07 11:30:00', 
    '2023-07-08 19:30:00'
  ), 
  (
    8, 9, 4, 63.96, 4.3, 1.6, 1.3, '2023-07-12 08:00:00', 
    '2023-07-14 10:00:00'
  ), 
  (
    9, 10, 2, 51.00, 3.9, 0.8, 0.7, '2023-08-01 07:45:00', 
    '2023-08-02 16:10:00'
  ), 
  (
    10, 1, 1, 24.10, 4.6, 2.3, 1.8, '2023-08-20 12:00:00', 
    '2023-08-21 14:00:00'
  ), 
  (
    11, 2, 2, 259.98, 4.8, 1.6, 1.2, '2023-09-03 10:15:00', 
    '2023-09-04 13:00:00'
  ), 
  (
    12, 4, 3, 150.00, 3.2, 1.7, 1.4, '2023-10-01 09:20:00', 
    '2023-10-03 15:10:00'
  ), 
  (
    13, 7, 1, 19.99, 4.4, 1.0, 0.9, '2023-10-11 14:50:00', 
    '2023-10-12 10:30:00'
  );