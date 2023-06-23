SELECT order_id, oi.product_id, p.name, quantity, oi.unit_price, oi.unit_price * quantity AS "total_price"
FROM sql_store.order_items oi
JOIN sql_store.products p
	ON oi.product_id = p.product_id
