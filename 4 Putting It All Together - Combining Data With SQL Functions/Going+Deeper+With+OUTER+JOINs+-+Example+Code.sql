/*Mixing INNER and OUTER JOINs*/
SELECT
A.[BusinessEntityID],
A.[FirstName],
A.[LastName],
B.[JobTitle],
B.VacationHours,
B.SickLeaveHours,
C.[EmailAddress]

FROM [AdventureWorks2019].[Person].[Person] A
LEFT OUTER JOIN [AdventureWorks2019].[HumanResources].[Employee] B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN [AdventureWorks2019].[Person].[EmailAddress] C
ON A.BusinessEntityID = C.BusinessEntityID

WHERE A.[FirstName] = 'John'


/*Applying criteria to OUTER JOINs*/
SELECT
A.[BusinessEntityID],
A.[FirstName],
A.[LastName],
B.[JobTitle],
B.VacationHours,
B.SickLeaveHours,
C.[EmailAddress]

FROM [AdventureWorks2019].[Person].[Person] A
LEFT OUTER JOIN [AdventureWorks2019].[HumanResources].[Employee] B
ON A.BusinessEntityID = B.BusinessEntityID
	AND B.VacationHours > 50
INNER JOIN [AdventureWorks2019].[Person].[EmailAddress] C
ON A.BusinessEntityID = C.BusinessEntityID

WHERE A.[FirstName] = 'John'
	--AND B.VacationHours > 50
