/*LEFT OUTER JOIN*/
SELECT
A.[BusinessEntityID],
A.[FirstName],
A.[LastName],
B.[JobTitle],
B.VacationHours,
B.SickLeaveHours

FROM [Person].[Person] A
LEFT OUTER JOIN [HumanResources].[Employee] B
ON A.BusinessEntityID = B.BusinessEntityID

WHERE A.[FirstName] = 'John'



/*RIGHT OUTER JOIN*/
SELECT
A.[BusinessEntityID],
A.[FirstName],
A.[LastName],
B.[JobTitle],
B.VacationHours,
B.SickLeaveHours

FROM [HumanResources].[Employee] B
RIGHT OUTER JOIN [Person].[Person] A
ON A.BusinessEntityID = B.BusinessEntityID

WHERE A.[FirstName] = 'John'