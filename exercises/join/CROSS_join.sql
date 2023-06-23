USE sql_store;

SELECT
	sh.name AS shipper,
    p.name AS product
FROM products p
CROSS JOIN shippers sh -- = FROM products p, shippers sh 
ORDER BY sh.name
