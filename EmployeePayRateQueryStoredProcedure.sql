SELECT * FROM Person.Address

USE AdventureWorks2012
GO

CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT * FROM Person.Address
GO

EXEC dbo.uspGetAddress

ALTER PROCEDURE dbo.uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT *
FROM Person.[Address]
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1, AddressLine1) + '%'
GO

EXEC dbo.uspGetAddress @City = 'New York'
EXEC dbo.uspGetAddress @City = 'Calgary'
EXEC dbo.uspGetAddress @City = 'Calgary', @AddressLine1 = 'A'
EXEC dbo.uspGetAddress @City = 'Calgary', @AddressLine1 = 'Ac'


--
CREATE PROCEDURE dbo.uspGetAddressCount @City nvarchar(30), @AddressCount int OUTPUT
AS
SELECT @AddressCount = count(*)
FROM AdventureWorks2012.Person.Address
WHERE City = @City


--
DECLARE @AddressCount int
EXEC dbo.uspGetAddressCount @City = 'Calgary', @AddressCount = @AddressCount OUTPUT
SELECT @AddressCount

--
DECLARE @AddressCount int
EXEC dbo.uspGetAddressCount 'Calgary', @AddressCount OUTPUT
SELECT @AddressCount



--
CREATE PROCEDURE dbo.uspTryCatchTest
AS
BEGIN TRY
    SELECT 1/0
END TRY
BEGIN CATCH
    SELECT ERROR_NUMBER() AS ErrorNumber
	 ,ERROR_SEVERITY() AS ErrorSeverity
	 ,ERROR_STATE() AS ErrorState
	 ,ERROR_PROCEDURE() AS ErrorProcedure
	 ,ERROR_LINE() AS ErrorLine
	 ,ERROR_MESSAGE() AS ErrorMessage;
END CATCH

EXEC dbo.uspTryCatchTest

SELECT * FROM Sales.Customer


DROP PROCEDURE dbo.uspGetAddress

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT *
FROM Person.Address
WHERE City = @City
GO

ALTER PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT *
FROM Person.Address
WHERE City LIKE @City + '%'
GO


DROP PROC get_employee_pay_rates
GO
CREATE PROC get_employee_pay_rates @FirstName nvarchar(50) = NULL, @LastName nvarchar(50) = NULL
AS
-- design a stored procedure that has at least two joins and two parameters
-- get all employees, and print their names, addresses, and pay rate history
-- do the join of Person.Person with HumanResources.Employee and join that with HumanResources.Department
-- optional parameters include the person's first and last names
SELECT P.BusinessEntityID, P.PersonType, P.FirstName, P.MiddleName, P.LastName, E.OrganizationLevel, E.JobTitle, PH.Rate
FROM Person.Person AS P 
INNER JOIN HumanResources.Employee AS E
ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN HumanResources.EmployeePayHistory AS PH
ON PH.BusinessEntityID = E.BusinessEntityID
--WHERE P.FirstName = @FirstName AND P.LastName = @LastName
ORDER BY PH.Rate DESC
GO

EXEC get_employee_pay_rates 'John', 'Frum'

CREATE PROCEDURE


SELECT *
FROM Purchasing.ProductVendor

SELECT *
FROM Sales.Store








