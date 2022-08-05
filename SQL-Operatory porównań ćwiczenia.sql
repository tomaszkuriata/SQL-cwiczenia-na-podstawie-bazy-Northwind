-- Operatory por�wna�: <,>,<=,>=

--Wy�wietl Produkty, kt�rych cena jednostkowa jest wi�ksza od 40.Posortuj po cenie rosn�co.

USE Northwind

SELECT *
FROM Products
WHERE UnitPrice > 40
ORDER BY UnitPrice

--Wy�wietl Produkty, kt�rych cena jednostkowa jest wieksza lub r�wna 40. Posortuj po cenie rosn�co.

SELECT *
FROM Products
WHERE UnitPrice >= 40
ORDER BY UnitPrice

--Wy�wietl Produkty, kt�rych cena jednostkowa jest mniejsza od 10. Posortuj po cenie malej�co.

SELECT *
FROM Products
WHERE UnitPrice < 10
ORDER BY UnitPrice DESC

--Wy�wietl Produkty, kt�rych cena jednostkowa jest mniejsza lub r�wna 10. Posortuj po cenie malej�co.

SELECT *
FROM Products
WHERE UnitPrice<= 10
ORDER BY UnitPrice DESC

--Wy�wietl zam�wienia ze Stan�w Zjednoczonych i kraj�w o nazwie 'wi�kszej'. Posortuj po kraju rosn�co.

SELECT *
FROM Orders
WHERE ShipCountry >= 'USA'
ORDER BY ShipCountry 

--Wy�wietl produkty, kt�rych cena jednostkowa jest z zakresu 15 i 20. Posortuj po cenie malej�co.

SELECT *
FROM Products
WHERE UnitPrice>= 15 AND UnitPrice <= 20 
ORDER BY UnitPrice DESC

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 15 AND 20
ORDER BY UnitPrice DESC

