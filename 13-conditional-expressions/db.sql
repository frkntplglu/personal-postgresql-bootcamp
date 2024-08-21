/* 
CASE is the same IF / ELSE in other programming languages.

 */

 CASE 
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    WHEN condition_3 THEN result_3
    ELSE else_result
END

SELECT title, length
    CASE 
        WHEN length > 0 AND length <= 50 THEN 'short'
        WHEN length > 50 AND length <= 120 THEN 'medium'
        WHEN length > 120 THEN 'long' END AS duration 
    FROM film ORDER BY title;


/* 
COALESCE

Accepts multiple arguments and returns the first non-null argument. We can use it when we use nullable data in any calculation. COALESCE(discount, 0) if discount is null it uses 0. It is case for IFNULL or NOT

 */

 /* NULLIF it returns null if argument1 and argument2 are the same otherwise it returns argument1 */