/* UNION operator combine the result sets of two or more SELECT statement into a single result set. In UNION, column numbers must be same and type must be compatible. */
/* UNION and UNION ALL combines result sets UNION ALL retain duplicate rows. */
SELECT * FROM top_rated_films UNION ALL SELECT * FROM most_popular_films; 

/* INTERSECT returns a result set containing rows available in both results sets */
SELECT * FROM top_rated_films INTERSECT SELECT * FROM most_popular_films;

/* EXCEPT returns a result set containing rows available in only first query */
SELECT * FROM top_rated_films EXCEPT SELECT * FROM most_popular_films;