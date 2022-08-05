-- ORDER BY
--Wy�wietl wszystkie kolumny i wszystkie wiersze z tabeli Customers.Wyniki posortuj malej�co po nazwie firmy.

USE Northwind
SELECT *
FROM Customers
ORDER BY CompanyName DESC

--Wy�wietl wszystkie kolumny i wiersze z tabeli Customers. Wyniki posortuj rosn�co po nazwie firmy.

SELECT *
FROM Customers	
ORDER BY CompanyName ASC

/* Wy�wietl wszytkie produkty ale ogranicz liczb� kolumn do : Nazwa produktu i Cena jednostkowa.
Nadaj kolumnom nazwy polskie i posortuj wyniki rosn�co po cenie jednostkowej*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY [Cena jednostkowa] ASC

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY UnitPrice

/*Wy�wietl wszytkie produkty ale ogranicz liczb� kolumn do : Nazwa produktu i Cena jednostkowa.
Nadaj kolumnom nazwy polskie i posortuj wyniki malej�co po nazwie produktu*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
From Products
ORDER BY [Nazwa produktu] DESC

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
From Products
ORDER BY ProductName DESC

/*Wy�wietl wszytkie produkty ale ogranicz liczb� kolumn do : Nazwa produktu i Cena jednostkowa.
Posortuj wyniki rosn�co po cenie jednostkowej produktu, a nast�pnie malej�co po nazwie*/

SELECT  ProductName AS [Nazwa produktu], UnitPrice AS [Cena jednostkowa]
FROM Products
ORDER BY UnitPrice ASC, ProductName DESC

/*Wy�wietl wszystkich klient�w ale ogranicz liczb� kolumn do: Company Name, Contact Name, Contact Title,
City, Country. Posortuj wyniki malej�co po kraju a nast�pnie rosn�co po mie�cie.*/

SELECT CompanyName, ContactName, ContactTitle, City, Country
FROM Customers
ORDER BY Country DESC, City ASC