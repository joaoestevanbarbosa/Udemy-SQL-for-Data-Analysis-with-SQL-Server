/*Using HAVING to filter for products with large sales amounts */

SELECT 
[TotalSales] = SUM(A.[LineTotal]),
[Product] = B.[Name]

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
	ON A.[ProductID] = B.[ProductID]

GROUP BY B.[Name]

HAVING SUM(A.[LineTotal]) > 10000


/*Identifying duplicate last names with HAVING*/

SELECT 
       [LastName],
	   [Count] = COUNT(*)
FROM [AdventureWorks2019].[Person].[Person]

GROUP BY [LastName]

HAVING COUNT(*) > 1


/*Combining WHERE with HAVING*/

SELECT
[ProductCount] = COUNT(*),
[TotalSales] = SUM(A.[LineTotal]),
[Product] = B.[Name],
B.[Size]

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
	ON A.[ProductID] = B.[ProductID]

WHERE B.[Size] IS NOT NULL

GROUP BY
B.[Name],
B.[Size]

HAVING SUM(A.[LineTotal]) > 500000

ORDER BY SUM(A.[LineTotal]) DESC


