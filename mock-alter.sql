-- Changing database structure (When needed)
-- Is done using the following commands/clauses, which are also apart of the DDL statement family
--The statements we use to change the database tables are;
-- ALTER,UPDATE/SET, DELETE/WHERE, ADD(used with and ALTER statement), DROP

ALTER TABLE c_order
ALTER COLUMN cart_id
DROP NOT NULL;


--CHECK THE STRUCTURE OF ORDER_DATA DATA
select ORDER_DATE
from C_ORDER;


-- UPDATE ORDER_DATE
UPDATE c_order
SET order_date = '2021-04-07'
WHERE order_date = '2021-04-06' AND cart_id = 1;

-- DELETE statement for brand where the seller_id is 2
DELETE FROM brand
WHERE seller_id = 2;

-- ADD statement for the customer table
--ADDING an email column for customers
--Usually used with Alter statment

ALTER TABLE customer
ADD email VARCHAR(150);

UPDATE customer
SET email = 'joelc@codingtemple.com'
WHERE customer_id = 1;

SELECT*
FROM customer;

--DROP statement for removing a table from the database

DROP TABLE inventory CASCADE;