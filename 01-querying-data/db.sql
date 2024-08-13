/* PostgreSQL Evaluates FROM clause before the SELECT clause */
SELECT customer_id, store_id, first_name FROM customer;
/* For querying all data */
SELECT * FROM customer;
/* we can concatenate two columns in one columns as is used for determining an alias */
SELECT first_name || ' ' || last_name as fullName, email FROM customer;
/* we can use double quot if we'd like to use spaces in alias name */
SELECT first_name || ' ' || last_name as "full name", email FROM customer;
/* We can sort of the results by using ORDER BY asc or desc  PostreSQL evaluates in this order FROM -> SELECT -> ORDER BY */
SELECT email, department, full_name FROM employers ORDER BY salary ASC;
/* We can use ORDER BY with expressions */
SELECT first_name, LENGTH(first_name) as len FROM customer ORDER BY len DESC;
/* We can specify where NULL data are located */
SELECT first_name FROM customer ORDER BY age NULLS FIRST | NULLS START;
/* We can avoid duplicate values. For example we have film table with rental_rate column. If we'd like to see how many different ratio we have, we can use DISTINCT */
SELECT DISTINCT rental_rate FROM film ORDER BY rental_rate;