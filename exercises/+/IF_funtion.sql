USE sql_store;

SELECT
	p.product_id,
    p.name,
    COUNT(*) AS orders,
    IF (COUNT(*) > 1, "many times", "once")
FROM products p
JOIN order_items oi USING (product_id)
GROUP BY product_id, name