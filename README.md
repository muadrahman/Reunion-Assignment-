# Readme: E-commerce Database Design and Data Analysis


## Problem 1:  E-commerce Database Design

### Database Schema Design

- Designed a relational database schema in MySQL.
- Tables include `Customers`, `Addresses`, `Categories`, `Products`, `ProductVariants`, `PriceHistory`, `Orders`, and `OrderItems`.
- Established primary keys (`AUTO_INCREMENT`) and foreign key relationships for data integrity and efficient querying.

### Entity-Relationship Diagram (ERD)

- Created an ERD illustrating relationships among entities (`Customers`, `Orders`, `Products`, etc.).
- Defined attributes and relationships to ensure clarity and consistency in data management.

### Design Choices

- **Primary Keys:** Utilized `AUTO_INCREMENT` for unique identification (`customer_id`, `product_id`, etc.).
- **Data Types:** Applied appropriate data types (`VARCHAR`, `DECIMAL`, `DATE`) for effective data storage.
- **Temporal Aspects:** Included date fields (`order_date`, `delivery_date`, `launch_date`, `discontinued_date`) to track changes over time.
- **Normalization:** Ensured tables were normalized to minimize redundancy and enhance database efficiency.
- **Foreign Keys:** Implemented foreign key constraints to maintain data integrity across related tables.

### Sample Data Generation

- Implemented scripts to insert sample data into the database.
- Generated random data for `Customers`, `Addresses`, `Categories`, `Products`, `ProductVariants`, `PriceHistory`, `Orders`, and `OrderItems`.
- Used SQL functions (`RAND()`, `DATE_SUB()`, `DATE_ADD()`) to simulate realistic scenarios:
  - Created at least 10 products with variants.
  - Generated order history spanning at least 2 years.
  - Included diverse customer information reflecting different locations.

---

## Problem 2: SQL Concepts

### 1. Retrieve the top 5 customers who have made the highest average order amounts in the last 6 months.

To identify the top customers based on average order amounts over the last 6 months, we utilize SQL functions to calculate average order amounts per customer. The `Orders`, `OrderItems`, and `Customers` tables are joined to fetch relevant data. This query helps identify valuable customers based on their recent spending patterns.

### 2. Retrieve the list of customers whose order value is lower this year as compared to the previous year.

This query compares the total order value for each customer between the current year and the previous year. It involves subqueries and joins to aggregate order amounts by year and determine which customers have experienced a decline in spending year-over-year. This analysis aids in identifying customers who may need attention or targeted marketing strategies.

### 3. Create a table showing cumulative purchases by a particular customer. Show the breakup of cumulative purchases by product category.

By specifying a particular customer, this query calculates the cumulative purchase amount across all orders placed by that customer. It further breaks down these purchases by product category. This involves joining multiple tables (`OrderItems`, `ProductVariants`, `Products`, and `Categories`) to aggregate and categorize purchase data, providing insights into a customer's buying behavior across different product types.

### 4. Retrieve the list of top 5 selling products. Further bifurcate the sales by product variants.

To determine the top-selling products, this query counts the number of units sold for each product variant. It involves joining `Products` and `ProductVariants` tables with `OrderItems` to aggregate sales data. The query ranks products based on total sales volume and provides a breakdown by product variants, enabling insights into product popularity and performance.

---

## Problem 5: Time Series Data Transformation (Attached)

This problem involves transforming time series data of AGI bots' activities:

### Problem Statement

- Transform CSV records containing start and end times of tasks into continuous periods of work for each bot.
- Aggregate activities performed during these periods for analysis.

### Approach

- Load CSV data into a pandas DataFrame.
- Convert timestamps to 24-hour format for consistency.
- Sort and group data by bot name.
- Implement algorithm to aggregate continuous work periods and activities.
- Export aggregated results to Excel for further analysis (`Aggregated_Time_Series.xlsx`).

### Conclusion

This solution effectively transforms complex time series data into structured work periods, providing insights into AGI bots' activities over time. For detailed implementation steps, refer to the attached Python script and SQL queries.

