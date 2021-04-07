-- Changing database structure (When needed)
-- Is done using the following commands/clauses, which are also apart of the DDL statement family
-- The statements we use to change the database tables are:
-- ALTER, UPDATE/SET, DELETE/WHERE, ADD(used with an ALTER statment), DROP


-- Check the structure of order_date data
SELECT ticket_date
FROM c_ticket;

-- Update order_date
UPDATE c_order
SET order_date = '2021-04-07'
WHERE order_date = '2021-04-06' AND cart_id = 1;

-- DELETE statment for brand where the seller_id is 2
DELETE FROM c_ticket
WHERE ticket_id = 2;

SELECT *
FROM c_ticket;

-- ADD statment for the customer table
-- Adding an email column for customers
-- Usually used with an Alter statment

ALTER TABLE customer
ADD email VARCHAR(150);

UPDATE customer
SET email = 'joelc@codingtemple.com'
WHERE customer_id = 1;

SELECT *
FROM customer;

-- DROP statement for removing a table from the database
DROP TABLE inventory CASCADE;