/* SELECT - bez warunk�w*/

USE Northwind

/* Wy�wietl wszystkie kolumny i wszystkie wiersze tabeli Customers*/
SELECT *
FROM Customers

/* Wy�wietl wybrane kolumny (nazwa firmy i miasto) oraz wszystkie wiersze tabeli Customers*/
SELECT CompanyName, City
FROM Customers

/*Wy�wietl nastepuj�ce dane z tabeli Products: numery ID produkt�w, ich nazwy, ceny jednostkowe oraz ilo�� w magazynie*/
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products

/* Wy�wietl nast�puj�ce dane z tabeli Suppliers - nazwy firm, ich kraj oraz miasto*/
SELECT CompanyName, Country, City
FROM Suppliers

/*Wy�wietl imiona, nazwiska oraz stanowiska pracownik�w*/
SELECT FirstName, LastName, Title
FROM Employees



