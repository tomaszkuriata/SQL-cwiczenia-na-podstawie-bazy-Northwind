--DISTINCT

--Wy�wietl jakie stanowiska s� wsr�d pracownikow.

USE Northwind

SELECT DISTINCT Title
FROM Employees

--Wy�wietl jakie stanowiska s� w�r�d pracownik�w ze Stan�w Zjednoczonych.

SELECT DISTINCT Title
FROM Employees
WHERE Country= 'USA'

--Wy�wietl jakie stanowiska s� w�r�d pracownik�w w poszczeg�lnych krajach. Posortuj wed�ug kraju 

SELECT DISTINCT Title, Country
FROM Employees
ORDER BY Country

--Wy�wietl kraje z kt�rych pochodz� zam�wienia. Posortuj wyniki rosn�co

SELECT DISTINCT ShipCountry
FROM Orders
ORDER BY ShipCountry ASC

--Wy�wietl z jakich miast brazylijskih s� zam�wienia.

SELECT DISTINCT ShipCity
FROM Orders
WHERE ShipCountry= 'Brazil'

--Wy�wietl miasta z poszczeg�lnych kraj�w, z kt�rych s� zam�wienia.Posortuj po kraju i mie�cie rosn�co.

SELECT DISTINCT ShipCountry, ShipCity
FROM Orders
ORDER BY ShipCountry, ShipCity


