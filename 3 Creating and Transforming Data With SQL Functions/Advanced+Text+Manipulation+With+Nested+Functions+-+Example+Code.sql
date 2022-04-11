/*Combining LEN and LEFT to extract a variable number of characters from the beginning of a string*/

SELECT [EmailAddress]
	  ,[User Name Length] = LEN([EmailAddress]) - 20
	  ,[User Name] = LEFT([EmailAddress], LEN([EmailAddress]) - 20)
FROM [AdventureWorks2019].[Person].[EmailAddress]


/*Padding IDs to 10 characters with leading zeros*/

SELECT 
      [NationalIDNumber],
	  [ID Length] = LEN([NationalIDNumber]),
	  [Padded ID] = RIGHT('0000000000' + [NationalIDNumber], 10)

FROM [AdventureWorks2019].[HumanResources].[Employee]



/*Replacing commmas and periods in a string*/
SELECT [Description],
      [No Commas] = REPLACE([Description], ',', ''),
	  [No Commas Or Periods] = REPLACE(REPLACE([Description], ',', ''), '.', '')

FROM [AdventureWorks2019].[Production].[ProductDescription]
