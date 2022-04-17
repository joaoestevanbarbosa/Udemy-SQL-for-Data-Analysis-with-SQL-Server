/*LEFT Function*/

SELECT
	  [PhoneNumber],
      [Area Code] = LEFT([PhoneNumber], 3)
FROM [AdventureWorks2019].[Person].[PersonPhone]

WHERE [PhoneNumber] NOT LIKE '%(%'


/*RIGHT Function*/

SELECT 
      [AccountNumber],
      [Last 6] = RIGHT([AccountNumber], 6)

  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


/*LEN Function*/

SELECT
	  [PhoneNumber],
	  [Phone Number Length] = LEN([PhoneNumber])

 FROM [AdventureWorks2019].[Person].[PersonPhone]

WHERE LEN([PhoneNumber]) <= 12

/*Changing Email Domains With REPLACE*/

SELECT 
      [EmailAddress],
	  [Modified Email Address] = REPLACE([EmailAddress], 'adventure-works', 'hotmail')

FROM [AdventureWorks2019].[Person].[EmailAddress]











