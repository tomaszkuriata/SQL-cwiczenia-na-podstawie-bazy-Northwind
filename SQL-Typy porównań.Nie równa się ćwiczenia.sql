--Typy por�wna�.Nie r�wna si� !=, <> 

--Wy�wietl tylko klient�w z Polski.

USE Northwind

SELECT *
FROM Customers
WHERE Country= 'Poland'

--Wy�wietl zam�wienia spoza Stan�w Zjednoczonych.Posortuj wyniki po kraju malej�co.

SELECT *
FROM Orders
WHERE ShipCountry <> 'USA'
ORDER BY ShipCountry DESC

--Wy�wietl wszystkie kraje poza Niemcami.Posortuj wyniki po kraju malej�co.

SELECT DISTINCT ShipCountry
FROM Orders
WHERE ShipCountry != 'Germany'
ORDER BY ShipCountry DESC

-- Wy�wietl klient�w spoza Londynu.Posortuj wyniki po mie�cie rosn�co.

SELECT *
FROM Customers
WHERE City != 'London'
ORDER BY City

--Wy�wietl wszystkie produkty opr�cz tych nale��cych do kategorii nr 3.Posortuj po kategorii rosn�co.

SELECT *
FROM Products
WHERE CategoryID<>3
ORDER BY CategoryID