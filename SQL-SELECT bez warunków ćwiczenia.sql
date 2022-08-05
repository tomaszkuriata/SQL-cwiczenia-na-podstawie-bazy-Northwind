/* SELECT - bez warunków*/

USE Northwind

/* Wyœwietl wszystkie kolumny i wszystkie wiersze tabeli Customers*/
SELECT *
FROM Customers

/* Wyœwietl wybrane kolumny (nazwa firmy i miasto) oraz wszystkie wiersze tabeli Customers*/
SELECT CompanyName, City
FROM Customers

/*Wyœwietl nastepuj¹ce dane z tabeli Products: numery ID produktów, ich nazwy, ceny jednostkowe oraz iloœæ w magazynie*/
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products

/* Wyœwietl nastêpuj¹ce dane z tabeli Suppliers - nazwy firm, ich kraj oraz miasto*/
SELECT CompanyName, Country, City
FROM Suppliers

/*Wyœwietl imiona, nazwiska oraz stanowiska pracowników*/
SELECT FirstName, LastName, Title
FROM Employees



