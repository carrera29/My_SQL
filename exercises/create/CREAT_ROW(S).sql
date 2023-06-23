INSERT INTO sql_store.products (
	name, 
    quantity_in_stock, 
    unit_price)
VALUES 
	("Mermelade", "25", "7.25"),
    ("Jamon", "42", "30.5"),
    ("Wine", "125", "9.70");


INSERT INTO sql_store.orders (
	customer_id, 
    order_date, 
    status)
VALUES 
	(5, "2023-04-01", DEFAULT);

INSERT INTO sql_store.order_items
VALUES 
	(LAST_INSERT_ID(), 1, 2, 3.95),
    (LAST_INSERT_ID(), 2, 3, 1.95)
		

