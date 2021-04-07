--DDL Clauses: Data Defenition Language
--SQL CREATE STATEMENTS
--NAME data_type column-constraint (if available)

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR (100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

--Brand Table Creation
CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name varchar(150),
	contact_number VARCHAR(15),
	adress VARCHAR(150)
);

CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE c_order(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	Sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	cart_id INTEGER NOT NULL,
	FOREIGN KEY(cart_id) REFERENCES cart(cart_id)
);

CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(order_id) REFERENCES C_ORDER(ORDER_ID)
);

CREATE TABLE product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	upc INTEGER NOT NULL,
	SELLER_ID INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES inventory(upc),
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id)
);