USE sql_invoicing;

SELECT *
FROM invoices
WHERE invoice_total > (
	SELECT
		AVG (invoice_total) -- total AVG invoice amount
	FROM invoices
    WHERE client_id = invoices.client_id
)
ORDER BY invoice_id
