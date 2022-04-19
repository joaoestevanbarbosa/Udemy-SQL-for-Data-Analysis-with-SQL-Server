/*Basic CASE Statement*/

SELECT
[First Case] = 
	CASE
		WHEN 1 = 2 THEN 'A'
		WHEN 3 > 2 THEN 'B'
		WHEN 3 < 5 THEN 'C'
		ELSE 'D'
	END


/*Applying the CASE Statement to categorizing job titles*/

SELECT [JobTitle],
[Job Category] = 
	CASE
		WHEN [JobTitle] LIKE '%Production%' THEN 'Production'
		WHEN [JobTitle] LIKE '%Officer%' THEN 'Management'
		WHEN [JobTitle] LIKE '%Manager%' THEN 'Management'
		WHEN [JobTitle] LIKE '%President%' THEN 'Management'
		ELSE 'Other'
	END

  FROM [AdventureWorks2019].[HumanResources].[Employee]


/*Applying the CASE statement to aging buckets*/

SELECT 
      [OrderDate],
	  [Current Date] = CAST('07-31-2013' AS DATE),
	  [Elapsed Days] = DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)),
	  [Aging Bucket] =
		CASE
			WHEN DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)) < 10 THEN '< 10 Days'
			WHEN DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)) BETWEEN 10 AND 19 THEN '10-19 Days'
			ELSE '20+ Days'
		END

FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

WHERE [OrderDate] BETWEEN CAST('07-01-2013' AS DATE) AND CAST('07-31-2013' AS DATE)
