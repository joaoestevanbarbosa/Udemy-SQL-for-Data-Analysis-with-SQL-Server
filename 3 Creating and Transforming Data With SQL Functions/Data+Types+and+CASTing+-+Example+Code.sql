/*Integer division*/

SELECT 3 / 2

/*Implicit conversion from integer type to decimal type*/

SELECT 3 / (2 * 1.0)


/*Converting decimal data to integer data with CAST*/

SELECT 
       [TotalDue]
       ,[Total Due Truncated] = CAST([TotalDue] AS INT)

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


/*Converting datetimes to dates*/

SELECT GETDATE() - 2222

SELECT CAST(GETDATE() - 2222 AS DATE)


/*Using converted dates in the WHERE clause*/

SELECT 
       [OrderDate]
      
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

--WHERE [OrderDate] >= (GETDATE() - 2222)
WHERE [OrderDate] >= CAST(GETDATE() - 2222 AS DATE)

ORDER BY 1


/*Casting a string as an int*/

SELECT CAST('123' AS INT)


/*Casting a string as date*/

SELECT CAST('2020-01-01' AS DATE)