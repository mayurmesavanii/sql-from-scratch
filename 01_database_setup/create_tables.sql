-- Creating the Categories table to store product category information
CREATE TABLE Categories (
  category_id SERIAL PRIMARY KEY,      -- Unique identifier for each category
  name VARCHAR(100)                    -- Name of the category (e.g., Electronics, Clothing)
);

-- Creating the Products table to store product details
CREATE TABLE Products (
  product_id SERIAL PRIMARY KEY,       -- Unique product ID
  name VARCHAR(100),                   -- Product name
  price DECIMAL(10, 2),                -- Product price with 2 decimal places
  description VARCHAR(255),           -- Optional product description
  tags VARCHAR(255),                  -- Tags or keywords for the product
  category_id INT,                    -- Foreign key to the Categories table
  supplier VARCHAR(100),              -- Supplier name
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Creating the Customer table to store customer details
CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,      -- Unique customer ID
  customer_name VARCHAR(100) NOT NULL, -- Full name of the customer
  email VARCHAR(100) NOT NULL,         -- Customer email address
  phone_number VARCHAR(20),            -- Customer phone number
  address VARCHAR(255),                -- Shipping address
  city VARCHAR(255)                    -- City of the customer
);

-- Creating the Orders table to store customer orders
CREATE TABLE Orders (
  order_id SERIAL PRIMARY KEY,         -- Unique order ID
  customer_id INT,                     -- Foreign key referencing the Customer
  product_id INT,                      -- Foreign key referencing the Product
  total_quantity INT,                  -- Number of items ordered
  total_amount DECIMAL(10, 2),         -- Total cost of the order
  order_rating DECIMAL(3, 1),          -- Rating given by the customer (e.g., 4.5)
  length DECIMAL(5, 2),                -- Package length (if applicable)
  width DECIMAL(5, 2),                 -- Package width
  order_timestamp TIMESTAMP,          -- Time when the order was placed
  delivery_timestamp TIMESTAMP,       -- Time when the order was delivered
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
