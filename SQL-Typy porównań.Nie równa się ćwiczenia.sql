--Typy porównañ.Nie równa siê !=, <> 

--Wyœwietl tylko klientów z Polski.

USE Northwind

SELECT *
FROM Customers
WHERE Country= 'Poland'

--Wyœwietl zamówienia spoza Stanów Zjednoczonych.Posortuj wyniki po kraju malej¹co.

SELECT *
FROM Orders
WHERE ShipCountry <> 'USA'
ORDER BY ShipCountry DESC

--Wyœwietl wszystkie kraje poza Niemcami.Posortuj wyniki po kraju malej¹co.

SELECT DISTINCT ShipCountry
FROM Orders
WHERE ShipCountry != 'Germany'
ORDER BY ShipCountry DESC

-- Wyœwietl klientów spoza Londynu.Posortuj wyniki po mieœcie rosn¹co.

SELECT *
FROM Customers
WHERE City != 'London'
ORDER BY City

--Wyœwietl wszystkie produkty oprócz tych nale¿¹cych do kategorii nr 3.Posortuj po kategorii rosn¹co.

SELECT *
FROM Products
WHERE CategoryID<>3
ORDER BY CategoryID