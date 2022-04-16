/*Creating default text values with ISNULL*/

SELECT  
       [Title]
	  ,[Modified Title] = ISNULL([Title], 'No Title')
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]

FROM [AdventureWorks2019].[Person].[Person]


/*Handling NULLs in inequalities with ISNULL*/

SELECT 
       [SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]

FROM [AdventureWorks2019].[Sales].[SalesPerson]

WHERE ISNULL([SalesQuota], 0) != 250000




