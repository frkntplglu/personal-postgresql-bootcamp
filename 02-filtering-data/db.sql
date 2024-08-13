/* WHERE clause can be used to retrieve rows that satisfy a specified condition. FROM -> WHERE -> SELECT -> ORDER BY */
/* WHERE statement can also be used in UPDATE and DELETE statement 

=
<
>
>=
<=
<> or != 
AND
OR
IN
BETWEEN
LIKE
IS NULL or IS NOT NULL
 */
SELECT full_name FROM customer WHERE age > 30;
SELECT first_name, last_name FROM customer WHERE first_name IN ('Ann', 'Anne', 'Annie');
/* & is called wildcard that matches any string 'Ann%' pattern matches any strings start with 'Ann' */
SELECT first_name, last_name FROM customer WHERE first_name LIKE 'Ann%'; /* LIKE will be explained later */
SELECT first_name, LENGTH(first_name) name_length FROM customer WHERE  first_name LIKE 'A%' AND LENGTH(first_name) BETWEEN 3 AND 5 ORDER BY name_length;
/* OFFSET determines where the query start to retrieve LIMIT 4 OFFSET 3 means start from 4th one and retrieve 3 films */
SELECT name from film LIMIT 4 OFFSET 3;
/* In order check timestamp column we need to cast the data by using :: cast operator. */
SELECT payment_id, amount, payment_date FROM payment WHERE payment_date::date IN ('2007-02-15', '2007-02-16');
/* LIKE

'A%' starts with A
'%A' ends with A
'%A%' contains A
'_her%' starts with any character then matches her and can be any number of characters

LIKE is case-insensitive ILIKE is not.
 */
SELECT first_name, last_name FROM customer WHERE first_name ILIKE 'BAR%';

/* 

~~	LIKE
~~*	ILIKE
!~~	NOT LIKE
!~~*	NOT ILIKE

 */