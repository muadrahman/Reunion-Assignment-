-- Inserting data into Customers table
INSERT INTO Customers (name, email, phone_number)
VALUES 
    ('John Doe', 'john.doe@gmail.com', '+91-9876543210'),
    ('Jane Smith', 'jane.smith@gmail.com', '+91-8765432109'),
    ('Michael Johnson', 'michael.johnson@gmail.com', '+91-7654321098'),
    ('Emily Brown', 'emily.brown@gmail.com', '+91-6543210987'),
    ('David Davis', 'david.davis@gmail.com', '+91-5432109876'),
    ('Sarah Wilson', 'sarah.wilson@gmail.com', '+91-4321098765'),
    ('Robert Miller', 'robert.miller@gmail.com', '+91-3210987654'),
    ('Linda Martinez', 'linda.martinez@gmail.com', '+91-2109876543'),
    ('William Anderson', 'william.anderson@gmail.com', '+91-1098765432'),
    ('Karen Taylor', 'karen.taylor@gmail.com', '+91-0987654321'),
    ('Daniel Clark', 'daniel.clark@gmail.com', '+91-9876543210'),
    ('Lisa Lopez', 'lisa.lopez@gmail.com', '+91-8765432109'),
    ('Kevin Lee', 'kevin.lee@gmail.com', '+91-7654321098'),
    ('Susan Hill', 'susan.hill@gmail.com', '+91-6543210987'),
    ('Matthew Moore', 'matthew.moore@gmail.com', '+91-5432109876'),
    ('Patricia Allen', 'patricia.allen@gmail.com', '+91-4321098765'),
    ('Jason Hall', 'jason.hall@gmail.com', '+91-3210987654'),
    ('Michelle Young', 'michelle.young@gmail.com', '+91-2109876543'),
    ('Richard King', 'richard.king@gmail.com', '+91-1098765432'),
    ('Amanda Green', 'amanda.green@gmail.com', '+91-0987654321');

-- Inserting data into Addresses table
INSERT INTO Addresses (customer_id, address_type, country, state, city, postal_code)
VALUES 
    (1, 'Home', 'India', 'Delhi', 'New Delhi', '110001'),
    (2, 'Home', 'India', 'Maharashtra', 'Mumbai', '400001'),
    (3, 'Work', 'India', 'Karnataka', 'Bangalore', '560001'),
    (4, 'Home', 'India', 'West Bengal', 'Kolkata', '700001'),
    (5, 'Home', 'India', 'Tamil Nadu', 'Chennai', '600001'),
    (6, 'Home', 'India', 'Uttar Pradesh', 'Lucknow', '226001'),
    (7, 'Home', 'India', 'Gujarat', 'Ahmedabad', '380001'),
    (8, 'Home', 'India', 'Punjab', 'Chandigarh', '160001'),
    (9, 'Home', 'India', 'Rajasthan', 'Jaipur', '302001'),
    (10, 'Home', 'India', 'Madhya Pradesh', 'Bhopal', '462001'),
    (11, 'Home', 'India', 'Kerala', 'Thiruvananthapuram', '695001'),
    (12, 'Home', 'India', 'Andhra Pradesh', 'Hyderabad', '500001'),
    (13, 'Work', 'India', 'Telangana', 'Hyderabad', '500001'),
    (14, 'Home', 'India', 'Bihar', 'Patna', '800001'),
    (15, 'Home', 'India', 'Odisha', 'Bhubaneswar', '751001'),
    (16, 'Home', 'India', 'Assam', 'Guwahati', '781001'),
    (17, 'Home', 'India', 'Haryana', 'Gurgaon', '122001'),
    (18, 'Home', 'India', 'Uttarakhand', 'Dehradun', '248001'),
    (19, 'Home', 'India', 'Jharkhand', 'Ranchi', '834001'),
    (20, 'Home', 'India', 'Chhattisgarh', 'Raipur', '492001');

-- Inserting data into Categories table
INSERT INTO Categories (category_name)
VALUES 
    ('Smartphones'),
    ('Shoes'),
    ('Gaming Consoles'),
    ('Televisions'),
    ('Smart Home Devices'),
    ('Wearable Technology'),
    ('Headphones'),
    ('Kitchen Appliances'),
    ('Home Appliances'),
    ('Vacuum Cleaners');

-- Inserting data into Products table
INSERT INTO Products (product_name, company_name, rating, category_id)
VALUES 
    ('Apple iPhone 13 Pro Max', 'Apple', 4.7, 1),
    ('Samsung Galaxy S21 Ultra', 'Samsung', 4.6, 1),
    ('Nike Air Zoom Pegasus 38', 'Nike', NULL, 2),
    ('Sony PlayStation 5', 'Sony', 4.9, 3),
    ('Samsung 65-inch QLED TV', 'Samsung', 4.8, 4),
    ('Amazon Echo Dot (4th Gen)', 'Amazon', 4.5, 5),
    ('Fossil Gen 5 Smartwatch', 'Fossil', 4.3, 6),
    ('Bose QuietComfort 35 II Headphones', 'Bose', 4.7, 7),
    ('Instant Pot Duo Evo Plus', 'Instant Pot', 4.4, 8),
    ('Dyson V11 Torque Drive Cordless Vacuum', 'Dyson', 4.6, 9);

-- Inserting data into Productvariants table

-- Variants for Apple iPhone 13 Pro Max
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (1, 'Color: Graphite', '2023-01-15', NULL, NULL),
    (1, 'Color: Silver', '2023-02-20', '2024-05-10', NULL);

-- Variants for Samsung Galaxy S21 Ultra
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (2, 'Color: Phantom Black', '2023-03-10', NULL, NULL),
    (2, 'Color: Phantom Silver', '2023-04-05', NULL, NULL);

-- Variants for Nike Air Zoom Pegasus 38
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (3, 'Size: US 9', '2022-12-01', '2023-09-20', '2024-05-01'),
    (3, 'Size: US 10', '2023-01-15', NULL, NULL);

-- Variants for Sony PlayStation 5
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (4, 'Storage: 825GB', '2023-02-10', NULL, NULL),
    (4, 'Storage: 1TB', '2023-03-20', '2024-01-10', NULL);

-- Variants for Samsung 65-inch QLED TV
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (5, 'Model: Q60A', '2023-04-05', '2024-02-28', NULL),
    (5, 'Model: Q80A', '2023-05-15', NULL, NULL);

-- Variants for Amazon Echo Dot (4th Gen)
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (6, 'Color: Charcoal', '2023-06-10', NULL, NULL),
    (6, 'Color: Glacier White', '2023-07-20', NULL, NULL);

-- Variants for Fossil Gen 5 Smartwatch
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (7, 'Color: Black', '2023-08-01', '2023-12-05', NULL),
    (7, 'Color: Rose Gold', '2023-09-15', NULL, NULL);

-- Variants for Bose QuietComfort 35 II Headphones
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (8, 'Color: Black', '2023-10-10', NULL, NULL),
    (8, 'Color: Silver', '2023-11-20', '2024-04-18', NULL);

-- Variants for Instant Pot Duo Evo Plus
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (9, 'Size: 6 Quart', '2023-12-01', NULL, NULL),
    (9, 'Size: 8 Quart', '2024-01-15', NULL, NULL);

-- Variants for Dyson V11 Torque Drive Cordless Vacuum
INSERT INTO ProductVariants (product_id, variant_name, launch_date, discontinued_date, re_launch_date)
VALUES 
    (10, 'Model: Animal', '2024-02-10', NULL, NULL),
    (10, 'Model: Outsize', '2024-03-20', '2024-06-20', NULL);


-- Sample Price History Data (adjusted values as per actual data)
INSERT INTO PriceHistory (variant_id, min_price, max_price, current_price, price_change_date)
VALUES 
    (1, 1099.00, 1199.00, 1149.00, '2023-01-15'),
    (2, 1099.00, 1199.00, 1149.00, '2023-02-20'),
    (3, 149.99, 179.99, 164.99, '2022-12-01'),
    (4, 499.00, 599.00, 549.00, '2023-02-10'),
    (5, 1499.00, 1699.00, 1599.00, '2023-04-05'),
    (6, 39.99, 49.99, 44.99, '2023-06-10'),
    (7, 199.00, 249.00, 219.00, '2023-08-01'),
    (8, 299.00, 349.00, 329.00, '2023-10-10'),
    (9, 99.00, 129.00, 119.00, '2023-12-01'),
    (10, 499.00, 599.00, 549.00, '2024-02-10'),
    (11, 1099.00, 1199.00, 1149.00, '2023-01-15'),
    (12, 1099.00, 1199.00, 1149.00, '2023-02-20'),
    (13, 159.99, 189.99, 174.99, '2022-12-01'),
    (14, 599.00, 699.00, 649.00, '2023-02-10'),
    (15, 1699.00, 1899.00, 1799.00, '2023-04-05'),
    (16, 49.99, 59.99, 54.99, '2023-06-10'),
    (17, 249.00, 299.00, 279.00, '2023-08-01'),
    (18, 349.00, 399.00, 379.00, '2023-10-10'),
    (19, 129.00, 149.00, 139.00, '2023-12-01'),
    (20, 599.00, 699.00, 649.00, '2024-02-10');


-- Insert into Orders Table with realistic sample data
INSERT INTO Orders (customer_id, order_date, delivery_date, payment_method)
SELECT 
    customer_id,
    order_date,
    DATE_ADD(order_date, INTERVAL FLOOR(5 + RAND() * 3) DAY) AS delivery_date,  -- Delivery date within 5 to 7 days of order date
    CASE FLOOR(RAND() * 6)
        WHEN 0 THEN 'Credit Card'
        WHEN 1 THEN 'UPI'
        WHEN 2 THEN 'PhonePe'
        WHEN 3 THEN 'Google Pay'
        WHEN 4 THEN 'Net Banking'
        ELSE 'Debit Card'
    END AS payment_method
FROM (
    SELECT 
        customer_id,
        DATE_SUB(NOW(), INTERVAL FLOOR(RAND() * 730) DAY) AS order_date  -- Random order date within the past 2 years
    FROM Customers
    ORDER BY RAND()
    LIMIT 50  -- Adjust based on desired number of orders and customers
) AS random_orders;


-- Insert into OrderItems Table with realistic sample data
INSERT INTO OrderItems (order_id, variant_id, quantity, unit_price, total_amount)
SELECT
    o.order_id,
    pv.variant_id,
    FLOOR(RAND() * 5) + 1 AS quantity,  -- Random quantity between 1 and 5
    ph.current_price AS unit_price,  -- Use current price from PriceHistory table
    ROUND(ph.current_price * (FLOOR(RAND() * 5) + 1), 2) AS total_amount  -- Calculate total amount
FROM
    Orders o
    JOIN Customers c ON o.customer_id = c.customer_id
    JOIN ProductVariants pv ON pv.product_id = FLOOR(RAND() * 10) + 1  -- Random product for variant
    JOIN PriceHistory ph ON pv.variant_id = ph.variant_id
ORDER BY RAND()
LIMIT 100;  -- Adjust based on desired number of order items







