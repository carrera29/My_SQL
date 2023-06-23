USE sql_store;

SELECT
	concat(first_name, ' ', last_name) AS client,
    points,
    CASE
		WHEN points > 3000 THEN "Gold" 
        WHEN points between 1000 AND 2000 THEN "Silver"
        ELSE "Bronze"
	END AS category
FROM customers
        