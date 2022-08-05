--SELECT z pojedyñczym warunkiem WHERE

/*Wyœwietl wszystkich pracowników w formacie: Nazwisko, Imiê, Stanowisko, Kraj. 
Zamieñ nazwy kolumn na jêzyk polski. Ogranicz wyniki do pracowników z USA*/

USE Northwind
SELECT LastName AS [Nazwisko], FirstName AS [Imiê], Title AS [Stanowisko], Country AS [Kraj]
FROM Employees
WHERE Country = 'USA'

--Wyœwietl wszystkich kientów w formacie : Nazwa firmy, Miasto, Kraj. Ogranicz wyniki do klientów z Londynu.

SELECT CompanyName, City, Country
FROM [dbo].[Customers]
WHERE City = 'London'

--Wyœwietl dane klientów, który s¹ w³aœcicielami firm.Posortuj wyniki po kraju malej¹co.

SELECT *
FROM Customers
WHERE ContactTitle = 'Owner'
ORDER BY Country DESC

/*Wyœwietl wszystkich klientów w formacie: Company Name, City, Country. Zmieñ nazwy kolumn na polskie.
Ogranicz wyniki do klientów z Niemiec.Posortuj po mnieœcie rosnaco.*/

SELECT CompanyName AS [Nazwa firmy], City AS [Miasto], Country AS [Kraj]
FROM Customers
WHERE Country = 'Germany'
ORDER BY City 

/* Wyœwietl nastêpuj¹ce dane pracownika o imieniu Robert: Nazwisko, Imiê, Stanowisko, Data urodzenia,
Data zatrudnienia, Kraj.Zmieñ nazwy kolumn na jêzyk polski.*/

SELECT LastName AS [Nazwisko], FirstName AS [Imiê], Title AS [Stanowisko], BirthDate AS [Data urodzenia], HireDate AS [Data zatrudnienia], Country AS [Kraj]
FROM Employees
WHERE FirstName = 'Robert'

--Wyœwietl dane pracownika o ID9.

SELECT *
FROM Employees
WHERE EmployeeID = 9

--Wyszukaj wszystkie zamówienia zrealizowane przez pracownika o ID9.

SELECT *
FROM Orders
WHERE EmployeeID=9

/* Wyszukaj nastêpuj¹ce dane produktu o nazwie Tofu: Nazwa produktu, Cena jednostkowa, iloœæ w magazynie.
Zmieñ nazwy kolumn na jêzyk polski*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa], UnitsInStock AS [Iloœæ w magazynie]
FROM Products
WHERE ProductName = 'Tofu'

-- Wyœwietl nastêpuj¹ce dane wycofanych produktów: ProductID, ProductName, UnitPrice.Posortuj wyniki po nazwie produktu rosn¹co.

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE Discontinued=1
ORDER BY ProductName ASC

/* Wyœwietl wszystkie produkty z kategorii 6. Posortuj wyniki po cenie jednostkowej produktów od najdro¿szego do najtañszego*/

SELECT *
FROM Products
WHERE CategoryID=6
ORDER BY UnitPrice DESC