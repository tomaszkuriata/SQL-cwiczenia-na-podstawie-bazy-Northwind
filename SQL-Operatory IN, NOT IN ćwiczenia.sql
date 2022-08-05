--	Operatory IN/ NOT IN

--Wy�wietl wszystkie produkty, kt�rych cena to 10, 15 lub 20. Posortuj po cenie rosn�co.

USE Northwind

SELECT *
FROM Products
WHERE UnitPrice IN (10,15,20)
ORDER BY UnitPrice

--Wy�wietl wszystkie produkty, kt�rych cena jest inna ni� 10,15 lub 20. Posortuj po cenie rosn�co.


SELECT *
FROM Products
WHERE UnitPrice NOT IN (10,15,20)
ORDER BY UnitPrice

--Wy�wietl zam�wienia pochodz�ce z Francji i Polski. Posortuj po kraju malej�co.

SELECT *
FROM Orders
WHERE ShipCountry IN ('France', 'Poland')
ORDER BY ShipCountry DESC

--Wy�wietl wszystkie informacje klient�w z Polski, Hiszpanii i Stan�w Zjednoczonych. Posortuj po kraju rosn�co.

SELECT *
FROM Customers
WHERE Country IN ('Poland', 'Spain', 'USA')
ORDER BY Country

--Wy�wietl dane osobowe i kraj klient�w spoza Polski, Hiszpanii i Stan�w Zjednoczonych. Wyniki posortuj malej�co.

SELECT ContactName, Country
FROM Customers 
WHERE Country NOT IN ('Poland', 'Spain', 'USA')
ORDER BY Country DESC

--Wy�wietl produkty nienalez�ce do kategorii 1,2,3 i 8. Wyniki posortuj rosn�co.

SELECT *
FROM Products
WHERE CategoryID NOT IN (1,2,3,8)
ORDER BY CategoryID
