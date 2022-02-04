--Exercise 1
--Select all columns AND rows from the “Sales.Customer” table using SELECT *.
SELECT * FROM Sales.Customer


--Exercise 2
--Select all columns and the top 100 rows from the “Production.Product” table, using SELECT *.
SELECT TOP 100 * FROM Production.Product


--Exercise 3
--Copy and paste the queries from the first two exercises into a single query editor window, one below the other. 
--Try running them individually, and then both at the same time.
SELECT TOP (3000)
	   [Title]
      ,[LastName]
      ,[FirstName]


  FROM [AdventureWorks2019].[Person].[Person]

  SELECT TOP (500)
       [OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]