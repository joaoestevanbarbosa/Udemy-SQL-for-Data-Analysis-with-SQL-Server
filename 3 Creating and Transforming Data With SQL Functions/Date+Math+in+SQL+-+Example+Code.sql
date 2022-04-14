/*Simple date math with GETDATE*/

SELECT GETDATE()
SELECT GETDATE() - 7

/*Determining prior month BOM and EOM with DATEADD*/

SELECT 
      [Current Date] = GETDATE(),
	  [First Of Month] = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1),
	  [Last Day Previous Month] = DATEADD(DAY, -1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1)),
	  [First Day Previous Month] = DATEADD(MONTH, -1, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))


/*Calculating elapsed time with DATEDIFF*/

SELECT 
       [OrderDate]
      ,[ShipDate]
	  ,[Elapsed Days] = DATEDIFF(DAY, [OrderDate], [ShipDate])

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

