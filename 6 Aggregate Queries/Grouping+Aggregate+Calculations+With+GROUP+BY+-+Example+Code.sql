/*Grouping by one field*/

SELECT 
[Count] = COUNT(*),
[JobTitle]

FROM [AdventureWorks2019].[HumanResources].[Employee]

GROUP BY [JobTitle]

SELECT
[VacationHours] = SUM(VacationHours),
[JobTitle]

FROM [AdventureWorks2019].[HumanResources].[Employee]

GROUP BY
[JobTitle]


/*Grouping by multiple fields*/

SELECT
[VacationHours] = SUM(VacationHours),
[JobTitle],
[Gender]

FROM [AdventureWorks2019].[HumanResources].[Employee]

GROUP BY
[JobTitle],
[Gender]

ORDER BY 1 DESC


/*Using multiple aggregate functions in a single query*/

SELECT
[EmployeeCount] = COUNT(*),
[VacationHours] = SUM(VacationHours),
[JobTitle],
[Gender]

FROM [AdventureWorks2019].[HumanResources].[Employee]

GROUP BY
[JobTitle],
[Gender]

ORDER BY 1 DESC
