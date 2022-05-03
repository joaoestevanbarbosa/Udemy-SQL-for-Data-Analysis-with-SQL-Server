/*Counting all records with COUNT(*)*/

SELECT COUNT(*)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


/*Using COUNT(*) with criteria*/

SELECT COUNT(*)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
WHERE [TotalDue] > 10000


/*Using COUNT to count non-NULL values in columns in our data*/

SELECT COUNT(SalesOrderID)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

SELECT COUNT(CurrencyRateID)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


/*Summing values with SUM*/

SELECT SUM(TotalDue)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

SELECT SUM(TotalDue)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
WHERE [OnlineOrderFlag] = 1


/*Determining minimum and maximum values with MIN and MAX*/

SELECT MIN(TotalDue)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

SELECT MAX(TotalDue)
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


/*Using AVG to average integers*/

SELECT * INTO #avg_demo FROM
(
SELECT [NUM] = 1 UNION
SELECT [NUM] = 2
) X

SELECT * FROM #avg_demo

SELECT AVG([NUM]) FROM #avg_demo

SELECT AVG(1.0 * [NUM]) FROM #avg_demo


/*Passing derived fields as arguments to aggragate functions*/

SELECT 
AVG([TaxAmt] + [Freight])

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

WHERE [TotalDue] > 10000


