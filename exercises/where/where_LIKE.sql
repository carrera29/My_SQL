SELECT *
FROM sql_store.customers
WHERE 
	address LIKE "%trail%" OR
    address LIKE "%avenue%" OR
    phone like "%9"