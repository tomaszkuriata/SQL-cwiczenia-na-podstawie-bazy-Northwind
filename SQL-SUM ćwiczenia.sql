--SUM

--Wyœwietl sumê cen jednostkowych wszystkich produktów.

USE Northwind

SELECT SUM (UnitPrice)
FROM Products

--Wyœwietl sumê cen produktow z kategorii 3.

SELECT SUM (UnitPrice)
FROM Products
WHERE CategoryID=3

--Wyœwietl kategoriê i sumê cen jednostkowych produktów dla ka¿dej z nich

SELECT CategoryID, SUM (UnitPrice)
FROM Products
GROUP BY CategoryID 