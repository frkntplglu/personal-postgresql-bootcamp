/* GROUP BY divides rows into groups for each group we can apply aggregate function such as SUM or COUNT
FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> DISTINCT -> ORDER BY -> LIMIT
 */
/* This returns each merchant id only once like DISTINCT we can use SUM or COUNT for other columns */
 SELECT merchant_id FROM cpc_report GROUP BY merchant_id; 
 /* This shows that merchant id and how many reports belong to this merchant id */
 SELECT merchant_id, COUNT(report_name) FROM cpc_report GROUP BY merchant_id; 

 /* HAVING clause specifies a search condition for a group. It is often used with the GROUP BY */
 /* The first query groupes customer id with their total amount of payment and the second query filter the result group set as larger than 200 */
SELECT customer_id, SUM (amount) amount FROM payment GROUP BY customer_id ORDER BY amount DESC;
SELECT customer_id, SUM (amount) amount FROM payment GROUP BY customer_id HAVING SUM (amount) > 200 ORDER BY amount DESC;
select merchant_id, count(report_name) from merchant_cpc_report group by merchant_id having count(report_name) >= 3;