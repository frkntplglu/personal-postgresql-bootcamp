/* CTE (common table expression) allows us to create a temporary result set within a query. It breaks complex queries and make them more readable */
/* It's like defining a function and use it. It can be used recursively which becomes handy for hierarchial data. */
WITH action_films AS ( SELECT f.title, f.length FROM film f INNER JOIN film_category fc USING (film_id) INNER JOIN category c USING(category_id) WHERE c.name = 'Action' ) 

SELECT * FROM action_films;