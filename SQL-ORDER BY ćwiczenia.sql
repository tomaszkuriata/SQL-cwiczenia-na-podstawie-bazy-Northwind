-- ORDER BY
--Wyœwietl wszystkie kolumny i wszystkie wiersze z tabeli Customers.Wyniki posortuj malej¹co po nazwie firmy.

USE Northwind
SELECT *
FROM Customers
ORDER BY CompanyName DESC

--Wyœwietl wszystkie kolumny i wiersze z tabeli Customers. Wyniki posortuj rosn¹co po nazwie firmy.

SELECT *
FROM Customers	
ORDER BY CompanyName ASC

/* Wyœwietl wszytkie produkty ale ogranicz liczbê kolumn do : Nazwa produktu i Cena jednostkowa.
Nadaj kolumnom nazwy polskie i posortuj wyniki rosn¹co po cenie jednostkowej*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY [Cena jednostkowa] ASC

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY UnitPrice

/*Wyœwietl wszytkie produkty ale ogranicz liczbê kolumn do : Nazwa produktu i Cena jednostkowa.
Nadaj kolumnom nazwy polskie i posortuj wyniki malej¹co po nazwie produktu*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
From Products
ORDER BY [Nazwa produktu] DESC

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
From Products
ORDER BY ProductName DESC

/*Wyœwietl wszytkie produkty ale ogranicz liczbê kolumn do : Nazwa produktu i Cena jednostkowa.
Posortuj wyniki rosn¹co po cenie jednostkowej produktu, a nastêpnie malej¹co po nazwie*/

SELECT  ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY UnitPrice ASC, ProductName DESC

/*Wyœwietl wszystkich klientów ale ogranicz liczbê kolumn do: Company Name, Contact Name, Contact Title,
City, Country. Posortuj wyniki malej¹co po kraju a nastêpnie rosn¹co po mieœcie.*/

SELECT CompanyName, ContactName, ContactTitle, City, Country
FROM Customers
ORDER BY Country DESC, City ASC