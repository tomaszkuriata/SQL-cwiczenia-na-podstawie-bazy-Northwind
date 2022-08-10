-- AVG œrednia

--Wyœwietl œredni¹ cenê jednostkow¹ wszystkich produktów.

USE Northwind

SELECT AVG (UnitPrice)
FROM Products

--Wyœwietl œrednia cenê produktów z kategorii 1 i 2 (bez rozdzielenia na te kategorie)

SELECT AVG (UnitPrice)
FROM Products
WHERE CategoryID in (1,2)

-- Wyœwietl kategoriê i œredni¹ cenê produktów dla ka¿dej z nich.

SELECT CategoryID, AVG (UnitPrice)
FROM Products
GROUP BY CategoryID

--Wyœwietl œredni¹ cenê produktów z kategorii 1 i 2(z rozdzieleniem na te kategorie)

SELECT AVG (UnitPrice), CategoryID
FROM Products
WHERE CategoryID IN (1,2)
GROUP BY CategoryID