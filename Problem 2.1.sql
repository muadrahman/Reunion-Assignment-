SELECT 
    c.customer_id,
    c.name,
    round(AVG(oi.total_amount),2) AS avg_order_amount
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    OrderItems oi ON o.order_id = oi.order_id
WHERE 
    o.order_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
GROUP BY 
    c.customer_id, c.name
ORDER BY 
    avg_order_amount DESC
LIMIT 5;
