/*ALIASY*/

--Wyœwietl nastêpuj¹ce dane z tabeli Suppliers:Company Name, City, Country i zamieñ nazwy kolumn na jêzyk polski

USE Northwind
SELECT CompanyName AS [Nazwa firmy], City AS [Miasto], Country AS [Kraj]
FROM Suppliers

--Wyœwietl nastêpuj¹ce dane wszystkich produktów: nazwa produktu, iloœæ na jednostkê i cena jednostkowa. Zmieñ nazwy kolumn na jêzyk polski

SELECT ProductName AS [Nazwa produktu], QuantityPerUnit AS [Iloœæ na jednostkê], UnitPrice AS [Cena jednostkowa]
FROM Products

/*Wyœwietl nastêpuj¹ce dane wszystkich zamówieñ: Data zamówienia, Numer ID klienta, który z³o¿y³ zamówienia, 
numer ID pracownika, który zrealizowa³ to zamówienia. Zmieñ nazwy kolumn na jêzyk polski*/

SELECT OrderDate AS [Data zamówienia], CustomerID AS [Numer ID klienta], EmployeeID AS [Numer ID pracownika]
FROM [dbo].[Orders]

--Wyœwietl imiê, nazwisko, datê zatrudnienia oraz kraj dla wszystkich rekordów z tabeli Employees.Zmieñ nazwy kolumn na jêzyk polski

SELECT FirstName AS [Imiê], LastName AS [Nazwisko], HireDate AS [Data zatrudnienia], Country AS [Kraj]
FROM Employees

/**Wyœwietl wszystkich spedytorów , ale ogranicz liczbê kolumn do : Nazwy firmy i Telefonu.
Nadaj tym kolumnom polskie nazwy, a tabeli Spedytorzy nadaj alias S.**/

SELECT CompanyName AS [Nazwa firmy], Phone AS [Telefon]
FROM Shippers AS S