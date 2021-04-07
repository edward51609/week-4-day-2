-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint (if available)

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Brand Table Creation
CREATE TABLE movies(
	seller_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);


CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
);

CREATE TABLE concessions(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES c_order(ticket_id)
);
