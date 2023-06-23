USE sql_store;

SELECT *
FROM orders
WHERE 
	YEAR(order_date) = YEAR(NOW()) AND 
    MONTH(order_date) <= MONTH(NOW())
