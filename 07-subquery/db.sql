/* A subquery can be useful for retrieving data. Subquery result set can be used as condition for the main query. */

SELECT country_id from country WHERE country = 'United States';
SELECT city from city WHERE country_id = 103 ORDER BY city;

/* we can combine above two queries with subquery. PostgreSQL executes subquery first */
SELECT city FROM city WHERE country_id = (SELECT country_id from country WHERE country = 'United States') ORDER BY city;

SELECT film_id, title FROM fil WHERE film_id IN (SELECT film_id FROM film_category INNER JOIN category USING(category_id) WHERE name = 'Action') ORDER BY film_id;

/* Correlated subquery executes for each row because it uses something from the processed row */
SELECT film_id, title, length, rating FROM film f WHERE length > ( SELECT AVG(length) FROM film WHERE rating = f.rating );

/* ANY Operator compares a value with a set of values element by element.  For example following query returns employees who have the same salary with managers. It can be used for searching in an array field. */
SELECT * FROM employess WHERE salary = ANY (SELECT salary FROM managers);
/* It also can be used with different operators such > < etc.  */
SELECT * FROM employess WHERE salary > ANY (SELECT salary FROM managers);

/* ALL operator compares a value with a whole set of values. Condition must be meet for all values. For example following query gives only employees who have high salary than all managers */
SELECT * FROM employees WHERE salary > ALL( select salary from managers );

/* EXISTS operator is a boolean operator that checks the existence of rows in a subquery. Typically it is used in WHERE clause of a SELECT statement. If the subquery returns at at least one row EXISTS return TRUE
if it returns NULL EXISTS returns also TRUE 
 */
/* The following query returns customers who have at least one payment higher than 11 */
SELECT first_name, last_name FROM customer c WHERE EXISTS ( SELECT 1 FROM payment p WHERE p.customer_id = c.customer_id AND amount > 11 ) ORDER BY first_name, last_name;
SELECT first_name, last_name FROM customer c WHERE NOT EXISTS ( SELECT 1 FROM payment p WHERE p.customer_id = c.customer_id AND amount > 11 ) ORDER BY first_name, last_name;