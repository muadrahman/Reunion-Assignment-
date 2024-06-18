SELECT 
    p.product_id,
    p.product_name,
    pv.variant_id,
    pv.variant_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM 
    Products p
JOIN 
    ProductVariants pv ON p.product_id = pv.product_id
JOIN 
    OrderItems oi ON pv.variant_id = oi.variant_id
GROUP BY 
    p.product_id, p.product_name, pv.variant_id, pv.variant_name
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;
