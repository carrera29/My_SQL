USE sql_store;

SELECT
	CONCAT(first_name, " ", last_name) AS client,
    IFNULL(phone, "unknow") as number
FROM customers
