/*UNION-ing similar data from different tables*/

SELECT 
	  [Order Type] = 'Customer Order',
	  [Order ID] = [SalesOrderID],
      [OrderDate],
	TotalDue

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

WHERE YEAR([OrderDate]) = 2013

UNION

SELECT
	   [Order Type] = 'Vendor Order',
	   [Order ID] = [PurchaseOrderID],
       [OrderDate],
	TotalDue

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

WHERE YEAR([OrderDate]) = 2013


/*UNION vs. UNION ALL*/


--UNION (no duplicates)
SELECT 
      [OrderDate]

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

WHERE YEAR([OrderDate]) = 2013

UNION

SELECT
       [OrderDate]
	TotalDue

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

WHERE YEAR([OrderDate]) = 2013


--UNION ALL (allows duplicates)
SELECT 
      [OrderDate]

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

WHERE YEAR([OrderDate]) = 2013

UNION ALL

SELECT
       [OrderDate]
	TotalDue

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

WHERE YEAR([OrderDate]) = 2013


