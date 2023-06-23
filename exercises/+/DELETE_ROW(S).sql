USE sql_invoicing;

INSERT INTO clients (
	client_id,
	name, 
    address, 
    city, 
    state)
VALUES (
	7,
	"Claudia", 
    "C/ Paz", 
    "Madrid", 
    "ES");

DELETE FROM clients
WHERE client_id = 7;