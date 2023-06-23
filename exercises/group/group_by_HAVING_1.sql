USE sql_store;

SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.state,
    SUM(oi.quantity * oi.unit_price) AS "total_spent"
FROM customers c
JOIN orders o
	USING (customer_id)
JOIN order_items oi
	ON o.order_id = oi.order_id
WHERE state = "VA"
GROUP BY c.customer_id
HAVING total_spent > 100
