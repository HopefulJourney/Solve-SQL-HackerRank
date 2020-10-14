/*
You are given a table, Functions, containing two columns: X and Y.
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
*/

SELECT table1.X, table1.Y FROM Functions table1
INNER JOIN Functions table2 ON table1.X=table2.Y AND table1.Y=table2.X
GROUP BY table1.X, table1.Y
HAVING COUNT(table1.X)>1 or table1.X<table1.Y
ORDER BY table1.X 
