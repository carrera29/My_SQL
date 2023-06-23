SELECT *
FROM sql_store.orders
WHERE 
	shipped_date IS null
    OR shipper_id IS null