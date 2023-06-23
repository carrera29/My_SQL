USE sql_store;

SELECT 
	p.product_id, 
    name, 
    quantity
FROM products p
LEFT JOIN order_items oi
	ON oi.product_id = p.product_id
ORDER BY p.product_id