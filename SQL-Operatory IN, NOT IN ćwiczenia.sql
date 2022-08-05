--	Operatory IN/ NOT IN

--Wyœwietl wszystkie produkty, których cena to 10, 15 lub 20. Posortuj po cenie rosn¹co.

USE Northwind

SELECT *
FROM Products
WHERE UnitPrice IN (10,15,20)
ORDER BY UnitPrice

--Wyœwietl wszystkie produkty, których cena jest inna ni¿ 10,15 lub 20. Posortuj po cenie rosn¹co.


SELECT *
FROM Products
WHERE UnitPrice NOT IN (10,15,20)
ORDER BY UnitPrice

--Wyœwietl zamówienia pochodz¹ce z Francji i Polski. Posortuj po kraju malej¹co.

SELECT *
FROM Orders
WHERE ShipCountry IN ('France', 'Poland')
ORDER BY ShipCountry DESC

--Wyœwietl wszystkie informacje klientów z Polski, Hiszpanii i Stanów Zjednoczonych. Posortuj po kraju rosn¹co.

SELECT *
FROM Customers
WHERE Country IN ('Poland', 'Spain', 'USA')
ORDER BY Country

--Wyœwietl dane osobowe i kraj klientów spoza Polski, Hiszpanii i Stanów Zjednoczonych. Wyniki posortuj malej¹co.

SELECT ContactName, Country
FROM Customers 
WHERE Country NOT IN ('Poland', 'Spain', 'USA')
ORDER BY Country DESC

--Wyœwietl produkty nienalez¹ce do kategorii 1,2,3 i 8. Wyniki posortuj rosn¹co.

SELECT *
FROM Products
WHERE CategoryID NOT IN (1,2,3,8)
ORDER BY CategoryID
