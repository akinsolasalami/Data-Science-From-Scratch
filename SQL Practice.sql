
/* Write a query that returns 
the user ID of all users that have created at least one ‘Refinance’ 
submission and at least one ‘InSchool’ submission.*/

SELECT user_id
FROM loans
WHERE type IN ('Refinance', 'InSchool')
GROUP BY user_id
HAVING COUNT(DISTINCT CASE WHEN type = 'Refinance' THEN 1 END) > 0
   AND COUNT(DISTINCT CASE WHEN type = 'InSchool' THEN 1 END) > 0;

/* The key here was using the Having count
It’s a trick to count conditionally within a GROUP BY query.

Since we only ever return 1 when the condition is met, we’re effectively asking:

Having is the only clause that can filter based on group by logic

Concept
Purpose
CASE WHEN ... THEN 1 END
A way to conditionally count rows
COUNT(DISTINCT ...)
Ensures only unique non-null values are counted
HAVING
Filters groups after GROUP BY, using aggregated results like COUNT()
 */ 

 