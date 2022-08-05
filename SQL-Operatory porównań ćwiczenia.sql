-- Operatory porównañ: <,>,<=,>=

--Wyœwietl Produkty, których cena jednostkowa jest wiêksza od 40.Posortuj po cenie rosn¹co.

USE Northwind

SELECT *
FROM Products
WHERE UnitPrice > 40
ORDER BY UnitPrice

--Wyœwietl Produkty, których cena jednostkowa jest wieksza lub równa 40. Posortuj po cenie rosn¹co.

SELECT *
FROM Products
WHERE UnitPrice >= 40
ORDER BY UnitPrice

--Wyœwietl Produkty, których cena jednostkowa jest mniejsza od 10. Posortuj po cenie malej¹co.

SELECT *
FROM Products
WHERE UnitPrice < 10
ORDER BY UnitPrice DESC

--Wyœwietl Produkty, których cena jednostkowa jest mniejsza lub równa 10. Posortuj po cenie malej¹co.

SELECT *
FROM Products
WHERE UnitPrice<= 10
ORDER BY UnitPrice DESC

--Wyœwietl zamówienia ze Stanów Zjednoczonych i krajów o nazwie 'wiêkszej'. Posortuj po kraju rosn¹co.

SELECT *
FROM Orders
WHERE ShipCountry >= 'USA'
ORDER BY ShipCountry 

--Wyœwietl produkty, których cena jednostkowa jest z zakresu 15 i 20. Posortuj po cenie malej¹co.

SELECT *
FROM Products
WHERE UnitPrice>= 15 AND UnitPrice <= 20 
ORDER BY UnitPrice DESC

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 15 AND 20
ORDER BY UnitPrice DESC

