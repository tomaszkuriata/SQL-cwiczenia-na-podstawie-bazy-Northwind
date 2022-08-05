--DISTINCT

--Wyœwietl jakie stanowiska s¹ wsród pracownikow.

USE Northwind

SELECT DISTINCT Title
FROM Employees

--Wyœwietl jakie stanowiska s¹ wœród pracowników ze Stanów Zjednoczonych.

SELECT DISTINCT Title
FROM Employees
WHERE Country= 'USA'

--Wyœwietl jakie stanowiska s¹ wœród pracowników w poszczególnych krajach. Posortuj wed³ug kraju 

SELECT DISTINCT Title, Country
FROM Employees
ORDER BY Country

--Wyœwietl kraje z których pochodz¹ zamówienia. Posortuj wyniki rosn¹co

SELECT DISTINCT ShipCountry
FROM Orders
ORDER BY ShipCountry ASC

--Wyœwietl z jakich miast brazylijskih s¹ zamówienia.

SELECT DISTINCT ShipCity
FROM Orders
WHERE ShipCountry= 'Brazil'

--Wyœwietl miasta z poszczególnych krajów, z których s¹ zamówienia.Posortuj po kraju i mieœcie rosn¹co.

SELECT DISTINCT ShipCountry, ShipCity
FROM Orders
ORDER BY ShipCountry, ShipCity


