USE sql_store;

-- Using EXISTS operator
SELECT *
FROM products p
WHERE NOT EXISTS (
	SELECT *
    FROM order_items
    WHERE product_id = p.product_id
);

-- Using IN operator
SELECT *
FROM products p
WHERE product_id NOT IN (
	SELECT product_id
	FROM order_items
)