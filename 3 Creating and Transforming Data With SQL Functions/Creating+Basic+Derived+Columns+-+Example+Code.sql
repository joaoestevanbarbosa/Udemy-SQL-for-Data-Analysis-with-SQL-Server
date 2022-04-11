/*String concatenation: first and last name*/

SELECT 
       [FirstName]
      ,[LastName]
      ,[Full Name] = [FirstName] + ' ' + [LastName]
	  
FROM [AdventureWorks2019].[Person].[Person]


/*Multiplication - Commission YTD*/

SELECT 
	  [CommissionPct],
	  [SalesYTD],
	   [CommissionYTD] = [CommissionPct] * [SalesYTD]

  FROM [AdventureWorks2019].[Sales].[SalesPerson]


/*Subtraction - Income YTD*/

SELECT 
	  [CommissionPct],
	  [SalesYTD],
	  [Bonus],
	  [CommissionYTD] = [CommissionPct] * [SalesYTD],
	  [IncomeYTD] = ([CommissionPct] * [SalesYTD]) + [Bonus]

  FROM [AdventureWorks2019].[Sales].[SalesPerson]


/*Subtraction - Sales Delta Year Over Year*/

SELECT 
       [SalesYTD]
      ,[SalesLastYear]
	  ,[Difference] = [SalesLastYear] - [SalesYTD]


  FROM [AdventureWorks2019].[Sales].[SalesPerson]


/*Division - Bonus Fairness*/

SELECT 
       [SalesYTD]
      ,[Bonus]
	  ,[Bonus %] = ([Bonus] / [SalesYTD]) * 100


  FROM [AdventureWorks2019].[Sales].[SalesPerson]

  ORDER BY 3


/*Division - Handling Whole Numbers*/

SELECT 
       [SafetyStockLevel]
      ,[ReorderPoint]
      ,[ReorderPoint % SafetyStockLevel] = [ReorderPoint] / [SafetyStockLevel]
      ,[ReorderPoint % SafetyStockLevel FIXED] = [ReorderPoint] / ([SafetyStockLevel] * 1.0)

  FROM [AdventureWorks2019].[Production].[Product]
