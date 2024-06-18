SELECT 
    c.customer_id,
    c.name
FROM 
    Customers c
JOIN 
    (
        SELECT 
            o.customer_id,
            SUM(CASE WHEN YEAR(o.order_date) = YEAR(CURDATE()) THEN oi.total_amount ELSE 0 END) AS total_amount_current_year,
            SUM(CASE WHEN YEAR(o.order_date) = YEAR(CURDATE()) - 1 THEN oi.total_amount ELSE 0 END) AS total_amount_previous_year
        FROM 
            Orders o
        JOIN 
            OrderItems oi ON o.order_id = oi.order_id
        WHERE 
            YEAR(o.order_date) >= YEAR(CURDATE()) - 1
        GROUP BY 
            o.customer_id
    ) AS yearly_orders ON c.customer_id = yearly_orders.customer_id
WHERE 
    yearly_orders.total_amount_current_year < yearly_orders.total_amount_previous_year;
