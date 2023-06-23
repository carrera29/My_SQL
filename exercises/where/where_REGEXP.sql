SELECT *
FROM sql_store.customers
WHERE
	first_name REGEXP "elka|ambur" 
    OR last_name REGEXP "ey$|on$"
    OR last_name REGEXP "^my| se"
    OR last_name REGEXP "B[RU]"
    