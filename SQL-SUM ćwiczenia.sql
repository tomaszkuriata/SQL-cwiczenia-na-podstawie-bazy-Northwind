--SUM

--Wy�wietl sum� cen jednostkowych wszystkich produkt�w.

USE Northwind

SELECT SUM (UnitPrice)
FROM Products

--Wy�wietl sum� cen produktow z kategorii 3.

SELECT SUM (UnitPrice)
FROM Products
WHERE CategoryID=3

--Wy�wietl kategori� i sum� cen jednostkowych produkt�w dla ka�dej z nich

SELECT CategoryID, SUM (UnitPrice)
FROM Products
GROUP BY CategoryID 