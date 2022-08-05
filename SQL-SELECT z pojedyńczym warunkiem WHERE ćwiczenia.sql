--SELECT z pojedy�czym warunkiem WHERE

/*Wy�wietl wszystkich pracownik�w w formacie: Nazwisko, Imi�, Stanowisko, Kraj. 
Zamie� nazwy kolumn na j�zyk polski. Ogranicz wyniki do pracownik�w z USA*/

USE Northwind
SELECT LastName AS [Nazwisko], FirstName AS [Imi�], Title AS [Stanowisko], Country AS [Kraj]
FROM Employees
WHERE Country = 'USA'

--Wy�wietl wszystkich kient�w w formacie : Nazwa firmy, Miasto, Kraj. Ogranicz wyniki do klient�w z Londynu.

SELECT CompanyName, City, Country
FROM [dbo].[Customers]
WHERE City = 'London'

--Wy�wietl dane klient�w, kt�ry s� w�a�cicielami firm.Posortuj wyniki po kraju malej�co.

SELECT *
FROM Customers
WHERE ContactTitle = 'Owner'
ORDER BY Country DESC

/*Wy�wietl wszystkich klient�w w formacie: Company Name, City, Country. Zmie� nazwy kolumn na polskie.
Ogranicz wyniki do klient�w z Niemiec.Posortuj po mnie�cie rosnaco.*/

SELECT CompanyName AS [Nazwa firmy], City AS [Miasto], Country AS [Kraj]
FROM Customers
WHERE Country = 'Germany'
ORDER BY City 

/* Wy�wietl nast�puj�ce dane pracownika o imieniu Robert: Nazwisko, Imi�, Stanowisko, Data urodzenia,
Data zatrudnienia, Kraj.Zmie� nazwy kolumn na j�zyk polski.*/

SELECT LastName AS [Nazwisko], FirstName AS [Imi�], Title AS [Stanowisko], BirthDate AS [Data urodzenia], HireDate AS [Data zatrudnienia], Country AS [Kraj]
FROM Employees
WHERE FirstName = 'Robert'

--Wy�wietl dane pracownika o ID9.

SELECT *
FROM Employees
WHERE EmployeeID = 9

--Wyszukaj wszystkie zam�wienia zrealizowane przez pracownika o ID9.

SELECT *
FROM Orders
WHERE EmployeeID=9

/* Wyszukaj nast�puj�ce dane produktu o nazwie Tofu: Nazwa produktu, Cena jednostkowa, ilo�� w magazynie.
Zmie� nazwy kolumn na j�zyk polski*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa], UnitsInStock AS [Ilo�� w magazynie]
FROM Products
WHERE ProductName = 'Tofu'

-- Wy�wietl nast�puj�ce dane wycofanych produkt�w: ProductID, ProductName, UnitPrice.Posortuj wyniki po nazwie produktu rosn�co.

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE Discontinued=1
ORDER BY ProductName ASC

/* Wy�wietl wszystkie produkty z kategorii 6. Posortuj wyniki po cenie jednostkowej produkt�w od najdro�szego do najta�szego*/

SELECT *
FROM Products
WHERE CategoryID=6
ORDER BY UnitPrice DESC