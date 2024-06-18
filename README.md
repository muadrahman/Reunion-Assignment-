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

## Problem 2: SQL Concepts (Attached)

This section covers SQL queries designed to extract insights from the e-commerce database:

- Query 1: Retrieve top 5 customers with highest average order amounts in the last 6 months.
- Query 2: Identify customers whose order value decreased this year compared to the previous year.
- Query 3: Create a table showing cumulative purchases by a specific customer, segmented by product category.
- Query 4: List top 5 selling products and their variants by sales volume.

Refer to the attached SQL files for detailed queries and their execution.

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

