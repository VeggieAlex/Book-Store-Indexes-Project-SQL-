SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

SELECT *
FROM books
LIMIT 10;

SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_indexes
WHERE tablename = 'books';

SELECT *
FROM pg_indexes
WHERE tablename = 'orders';

--CREATE INDEX customers_id_idx ON orders(customer_id);

--CREATE INDEX book_id_idx ON orders(book_id);

EXPLAIN ANALYZE SELECT original_language, title, sales_in_millions
FROM books
WHERE original_language = 'French';

SELECT pg_size_pretty (pg_total_relation_size('books'));

--CREATE INDEX books_original_language_title_sales_in_millions_idx ON books(original_language, title, sales_in_millions);

SELECT *
FROM customers
LIMIT 10;

SELECT *
FROM orders
LIMIT 10;

SELECT *
FROM books
LIMIT 10;

SELECT *
FROM pg_indexes
WHERE tablename = 'customers';

SELECT *
FROM pg_indexes
WHERE tablename = 'books';

SELECT *
FROM pg_indexes
WHERE tablename = 'orders';

SELECT NOW();
 
\COPY orders FROM 'orders_add.txt' DELIMITER ',' CSV HEADER;
 
SELECT NOW();

--Below might not be relevant since there is not enough given information and it slows down loading time.

--CREATE INDEX customer_first_name_email_address_idx ON
--customers(first_name, email_address);