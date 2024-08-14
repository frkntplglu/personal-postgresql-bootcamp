/* Joins is used to combine columns from one or more tables */

/* inner join firstly examines the first table and compare the value with the second tables then create new rows for each matching rows. Basically it shows intersection. */
SELECT a, fruit_a, b, fruit_b FROM basket_a INNER JOIN basket_b ON fruit_a = fruit_b;
/* left join shows all columns from the first table(left table) and only matching columns from the second column */
SELECT a, fruit_a, b, fruit_b FROM basket_a LEFT JOIN basket_b ON fruit_a = fruit_b;

/* right join shows all columns from the second table(right table) and only matching columns from the first column */
SELECT a, fruit_a, b, fruit_b FROM basket_a RIGHT JOIN basket_b ON fruit_a = fruit_b;
/* full join shows all columns from the both two tables and filled unmatching values with null */
SELECT a, fruit_a, b, fruit_b FROM basket_a FULL JOIN basket_b ON fruit_a = fruit_b;

/* If the column names are the same in both tables we can use USING keyword */
SELECT customer_id, first_name, last_name, amount, payment_date FROM customer INNER JOIN payment USING(customer_id) ORDER BY payment_date;

/* Self Join */
SELECT e.first_name || ' ' || e.last_name as employee, m.first_name || ' ' || m.last_name as manager FROM employee AS e INNER JOIN employee AS m ON m.employee_id = e.manager_id ORDER BY manager;

/* CROSS JOIN = CARTESIAN PRODUCT 
Suppose we'll perform a cross join of table1 and table1. table1 has n rows, table2 has m rows then result set has nxm rows. it can be simulated via INNER JOIN
*/

SELECT * FROM T1 CROSS JOIN T2; 
SELECT * FROM T1 INNER JOIN T2 ON true;