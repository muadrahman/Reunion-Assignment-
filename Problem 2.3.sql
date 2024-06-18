SELECT
    c.customer_id,
    c.name,
    cat.category_name,
    SUM(oi.total_amount) AS total_purchase_amount
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
JOIN
    OrderItems oi ON o.order_id = oi.order_id
JOIN
    ProductVariants pv ON oi.variant_id = pv.variant_id
JOIN
    Products p ON pv.product_id = p.product_id
JOIN
    Categories cat ON p.category_id = cat.category_id
WHERE
    c.customer_id = 13  -- Specify the customer_id here
GROUP BY
    c.customer_id, c.name, cat.category_name
ORDER BY
    c.customer_id, cat.category_name;
