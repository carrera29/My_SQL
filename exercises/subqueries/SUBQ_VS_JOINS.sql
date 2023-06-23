USE sql_store;

-- Solution with subqueries
SELECT 
	DISTINCT customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
	SELECT 
		DISTINCT customer_id
	FROM orders
	WHERE order_id IN (
		SELECT
			order_id
		FROM order_items
		WHERE product_id = 3
		)
)
ORDER BY customer_id;

-- Solution with joins
SELECT 
	DISTINCT customer_id,
    first_name,
    last_name
FROM customers c
JOIN orders o 
	USING (customer_id)
JOIN order_items oi
	USING (order_id)
WHERE oi.product_id = 3
ORDER BY c.customer_id;