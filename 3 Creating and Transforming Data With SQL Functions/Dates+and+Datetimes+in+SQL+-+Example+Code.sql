/*Current date and time with GETDATE()*/

SELECT [Current Timestamp] =  GETDATE()

/*Adding an "as of" column with GETDATE()*/

SELECT 
	   [As of Date] = GetDate()
      ,[BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Employee]


/*Creating a custom date with DATEFROMPARTS*/

SELECT [Custom Date] = DATEFROMPARTS(2020, 1,1)


/*Using dates in criteria*/

SELECT 
       [Order Year] = YEAR([OrderDate])
      ,[SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

  WHERE [OrderDate] < DATEFROMPARTS(2014, 1,1)
  --WHERE [OrderDate] >= DATEFROMPARTS(2014, 1,1)
  --WHERE [OrderDate] BETWEEN DATEFROMPARTS(2013, 1,1) AND DATEFROMPARTS(2013, 12, 31)
  --WHERE YEAR([OrderDate]) = 2013


/*Dynamically selecting the first day of the current month*/

SELECT [First Of Month] = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1)