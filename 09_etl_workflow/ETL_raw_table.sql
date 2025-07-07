-- Table1: Source with raw data

CREATE TABLE ETL_Raw_Sales_Staging (
    customer_name TEXT,
    email TEXT,
    city TEXT,
    product_name TEXT,
    price TEXT,
    quantity TEXT,
    order_date TEXT
);

-- Table2: Target with clean data

CREATE TABLE Clean_Sales (
    customer_id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    email TEXT NOT NULL,
    city TEXT,
    product_name TEXT NOT NULL,
    price NUMERIC(10,2),
    quantity INT,
    total_amount NUMERIC(12,2),
    order_date DATE
);

-- Inserting raw data to staging table

INSERT INTO ETL_Raw_Sales_Staging (
  customer_name, email, city, product_name, 
  price, quantity, order_date
) 
VALUES 
  -- Clean records
  (
    'Alice Johnson', 'alice@example.com', 
    'New York', 'Headphones', '129.99', 
    '2', '2023-08-12'
  ), 
  (
    'Bob Smith', 'bob@example.com', 'Chicago', 
    'Laptop', '999.99', '1', '2023-08-14'
  ), 
  (
    'Charlie Ray', 'charlie@example.com', 
    'Miami', 'Keyboard', '59.99', '3', 
    '2023-08-15'
  ), 
  -- Messy records
  (
    'david white ', 'david@EXAMPLE.com', 
    ' los angeles ', ' Mouse ', '19.99', 
    '1', '08/16/2023'
  ), 
  (
    'EVA BLACK', 'eva@example.com', 'Chicago', 
    'monitor', '149.99', '1', '2023/08/16'
  ), 
  (
    'frank green', 'frank@example.com', 
    'New York', ' Webcam', '39.5', '2', 
    '16-08-2023'
  ), 
  -- NULLs or weird values
  (
    'George Lee', 'george@example.com', 
    '', 'headphones', '', '1', '2023-08-17'
  ), 
  (
    'harry potter', '', 'Seattle', 'USB Cable', 
    '5.99', '', '2023-08-18'
  ), 
  (
    'Luna Lovegood', 'luna@example.com', 
    'Chicago', 'Laptop Stand', 'null', 
    '1', '2023-08-19'
  ), 
  (
    'Ron Weasley', 'ron@example.com', 
    'Miami', 'USB Hub', '14.99', '2', 
    '2023-08-19'
  ), 
  -- Duplicate names/emails
  (
    'alice johnson', 'alice@example.com', 
    'new york', 'Bluetooth Speaker', 
    '79.99', '1', '2023-08-20'
  ), 
  (
    'BOB SMITH', 'bob@example.com', 'CHICAGO', 
    'Mouse Pad', '9.99', '3', '2023-08-20'
  ), 
  -- More records to fill 50 rows
  (
    'Tony Stark', 'tony@stark.com', 'New York', 
    'Iron Keyboard', '300.99', '1', '2023-08-21'
  ), 
  (
    'Steve Rogers', 'steve@shield.com', 
    'Brooklyn', 'Shield Mouse', '199.99', 
    '2', '2023-08-21'
  ), 
  (
    'Natasha Romanoff', 'natasha@shield.com', 
    'Moscow', 'Spy Cam', '500.00', '1', 
    '2023-08-22'
  ), 
  (
    'Bruce Banner', 'bruce@hulk.com', 
    'Dayton', 'Green Mouse', '20.50', 
    '5', '2023-08-23'
  ), 
  (
    'Peter Parker', 'peter@dailybugle.com', 
    'Queens', 'Webcam', '45.75', '2', 
    '2023-08-23'
  ), 
  (
    'Stephen Strange', 'strange@sorcery.org', 
    'Kathmandu', 'Mystic Display', '599.99', 
    '1', '2023-08-24'
  ), 
  (
    'Scott Lang', 'scott@quantum.com', 
    'San Francisco', 'Quantum USB', 
    '12.00', '4', '2023-08-25'
  ), 
  (
    'Hope Van Dyne', 'hope@wasp.com', 
    'San Francisco', 'Wasp Drone', '129.00', 
    '1', '2023-08-25'
  ), 
  -- Repeat pattern to reach 50+
  (
    'Bucky Barnes', 'bucky@winter.com', 
    'Brooklyn', 'Arm Glove', '49.99', 
    '1', '2023-08-26'
  ), 
  (
    'Sam Wilson', 'sam@falcon.com', 'Washington', 
    'Flight Controller', '89.00', '2', 
    '2023-08-26'
  ), 
  (
    'Carol Danvers', 'carol@marvel.com', 
    'Boston', 'Energy Cell', '159.50', 
    '1', '2023-08-27'
  ), 
  (
    'Nick Fury', 'nick@shield.com', 'Unknown', 
    'Eyepatch', '5.00', '10', '2023-08-27'
  ), 
  (
    'Phil Coulson', 'phil@shield.com', 
    'LA', 'Badge', '10.00', '4', '2023-08-28'
  ), 
  (
    'Maria Hill', 'maria@shield.com', 
    'Washington', 'Earpiece', '8.99', 
    '6', '2023-08-29'
  ), 
  (
    'Peggy Carter', 'peggy@shield.com', 
    'London', 'Old Files', '19.00', '1', 
    '2023-08-30'
  ), 
  (
    'Clint Barton', 'clint@shield.com', 
    'Iowa', 'Arrows', '29.00', '12', '2023-08-30'
  ), 
  (
    'Wanda Maximoff', 'wanda@avengers.com', 
    'Sokovia', 'Magic Controller', '500.00', 
    '1', '2023-08-31'
  ), 
  (
    'Vision', 'vision@avengers.com', 
    'Digital', 'Mind Stone', '999.00', 
    '1', '2023-08-31'
  ), 
  (
    'Groot', 'iamgroot@guardians.com', 
    'Space', 'Branch Charger', '22.22', 
    '3', '2023-09-01'
  ), 
  (
    'Rocket', 'rocket@guardians.com', 
    'Galaxy', 'Blaster', '55.55', '1', 
    '2023-09-01'
  ), 
  (
    'Drax', 'drax@guardians.com', 'Nowhere', 
    'Blade', '75.75', '1', '2023-09-01'
  ), 
  (
    'Gamora', 'gamora@guardians.com', 
    'Zen-Whoberi', 'Sword', '88.88', 
    '1', '2023-09-02'
  ), 
  (
    'Star Lord', 'peterquill@guardians.com', 
    'Space', 'Walkman', '44.44', '1', 
    '2023-09-02'
  ), 
  (
    'Mantis', 'mantis@guardians.com', 
    'Ego', 'Antenna', '15.00', '1', '2023-09-02'
  ), 
  (
    'Thanos', 'thanos@infinity.com', 
    'Titan', 'Infinity Gauntlet', '9999.99', 
    '1', '2023-09-03'
  ), 
  (
    'Loki', 'loki@asgard.com', 'Asgard', 
    'Scepter', '850.00', '1', '2023-09-03'
  ), 
  (
    'Thor', 'thor@asgard.com', 'Asgard', 
    'Hammer', '1000.00', '1', '2023-09-03'
  ), 
  (
    'Heimdall', 'heimdall@asgard.com', 
    'Asgard', 'Sword', '199.99', '1', 
    '2023-09-03'
  ), 
  (
    'Jane Foster', 'jane@earth.com', 
    'London', 'Research Notes', '33.33', 
    '1', '2023-09-04'
  ), 
  (
    'Darcy Lewis', 'darcy@earth.com', 
    'London', 'Tablet', '299.99', '1', 
    '2023-09-04'
  ), 
  (
    'Erik Selvig', 'selvig@earth.com', 
    'London', 'Detector', '149.99', '1', 
    '2023-09-04'
  );


SELECT * FROM etl_raw_sales_staging;



