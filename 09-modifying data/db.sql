/* INSERT adds a new row into a table */
INSERT INTO table_name(column1, column2, column3) VALUES (value1, value2, value3);

/* RETURNING clause returns the information of the inserted row */
INSERT INTO table_name(column1, column2, column3) VALUES (value1, value2, value3) RETURNING *;

/* for inserting a date value we can use 'YYYY-MM-DD' format */
INSERT INTO links (url, name, last_update) VALUES('https://www.google.com','Google','2013-06-01');

/* we can add multiple row at the same insert statement. It is more performant. It ensures data consistency via atomicity. All rows are inserted or none are. */
INSERT INTO table_name(column1, column2, column3) VALUES 
    (value1, value2, value3),
    (value1, value2, value3),
    (value1, value2, value3);

/* Update statement allows us to update data in one or more columns of one or more rows in a table */
UPDATE table_name SET column1=new_value1, column2=new_value2 WHERE condition;
/* We can also use RETURNING with update */
UPDATE courses SET published_date = '2020-08-01' WHERE course_id = 3;
/* We can also use current value to update it */
UPDATE courses SET price = price * 1.05;
/* we can update a column based on another table */
UPDATE table1 SET table1.c1 = new_value FROM table2 WHERE table1.c2 = table2.c2;
UPDATE product SET net_price = price - price * discount FROM product.segment_id = product_segment.id
/* DELETE is the easisest statement in SQL but we have to be careful while using it. We have to add WHERE condition otherwise we can lost all data. */
DELETE from table_name WHERE condition RETURNING *;
/* In PostgreSQL there is no support for DELETE JOIN we can do this through USING keyword. The query below deletes users from the deny list. */
DELETE FROM member USING denylist WHERE member.phone = denylist.phone;

/* There is no official UPSERT statement in PostgreSQL but we can do this through INSERT ON CONFLICT */
INSERT INTO table_name (column1, column2) VALUES (value1, value2) ON CONFLICT DO NOTHING | DO UPDATE SET column1 = value1, column2 = value2;

/* MERGE can also be used for UPSERT operation but it should be focused on while needed it. */