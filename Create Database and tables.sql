-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS ecommerce_db;

-- Switch to the newly created database
USE ecommerce_db;

-- Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each customer
    name VARCHAR(50) NOT NULL,  -- Customer's name
    email VARCHAR(50) NOT NULL,  -- Customer's email address
    phone_number VARCHAR(20) NOT NULL  -- Customer's phone number
);

-- Addresses table
CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each address
    customer_id INT NOT NULL,  -- Foreign key linking to Customers table
    address_type VARCHAR(50) NOT NULL,  -- Type of address (e.g., Home, Work)
    country VARCHAR(50) NOT NULL,  -- Country of the address
    state VARCHAR(50) NOT NULL,  -- State or region of the address
    city VARCHAR(50) NOT NULL,  -- City of the address
    postal_code VARCHAR(20) NOT NULL,  -- Postal code or ZIP code of the address
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Reference to Customers table
);

-- Categories table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each category
    category_name VARCHAR(100) NOT NULL  -- Name of the category
);

-- Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each product
    product_name VARCHAR(100) NOT NULL,  -- Name of the product
    company_name VARCHAR(100) NOT NULL,  -- Company or brand name of the product
    rating DECIMAL(2,1),  -- Rating of the product (if applicable)
    category_id INT,  -- Foreign key linking to Categories table
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)  -- Reference to Categories table
);

-- Product Variants table
CREATE TABLE ProductVariants (
    variant_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each product variant
    product_id INT NOT NULL,  -- Foreign key linking to Products table
    variant_name VARCHAR(100) NOT NULL,  -- Name or description of the product variant
    launch_date DATE,  -- Date when the product variant was launched
    discontinued_date DATE,  -- Date when the product variant was discontinued
    re_launch_date DATE,  -- Date when the product variant was re-launched (if applicable)
    FOREIGN KEY (product_id) REFERENCES Products(product_id)  -- Reference to Products table
);

-- Price History table
CREATE TABLE PriceHistory (
    price_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each price history entry
    variant_id INT NOT NULL,  -- Foreign key linking to ProductVariants table
    min_price DECIMAL(10,2),  -- Minimum price recorded for the product variant
    max_price DECIMAL(10,2),  -- Maximum price recorded for the product variant
    current_price DECIMAL(10,2),  -- Current price of the product variant
    price_change_date DATE,  -- Date when the price change occurred
    FOREIGN KEY (variant_id) REFERENCES ProductVariants(variant_id)  -- Reference to ProductVariants table
);

-- Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each order
    customer_id INT NOT NULL,  -- Foreign key linking to Customers table
    order_date DATETIME NOT NULL,  -- Date and time when the order was placed
    delivery_date DATETIME,  -- Expected delivery date of the order
    payment_method VARCHAR(100),  -- Payment method used for the order
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Reference to Customers table
);

-- Order Items table
CREATE TABLE OrderItems (
    item_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each order item
    order_id INT NOT NULL,  -- Foreign key linking to Orders table
    variant_id INT NOT NULL,  -- Foreign key linking to ProductVariants table
    quantity INT NOT NULL,  -- Quantity of the product variant ordered
    unit_price DECIMAL(10,2) NOT NULL,  -- Unit price of the product variant at the time of order
    total_amount DECIMAL(10,2) NOT NULL,  -- Total amount for the order item (quantity * unit_price)
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),  -- Reference to Orders table
    FOREIGN KEY (variant_id) REFERENCES ProductVariants(variant_id)  -- Reference to ProductVariants table
);


