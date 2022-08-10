-- AVG �rednia

--Wy�wietl �redni� cen� jednostkow� wszystkich produkt�w.

USE Northwind

SELECT AVG (UnitPrice)
FROM Products

--Wy�wietl �rednia cen� produkt�w z kategorii 1 i 2 (bez rozdzielenia na te kategorie)

SELECT AVG (UnitPrice)
FROM Products
WHERE CategoryID in (1,2)

-- Wy�wietl kategori� i �redni� cen� produkt�w dla ka�dej z nich.

SELECT CategoryID, AVG (UnitPrice)
FROM Products
GROUP BY CategoryID

--Wy�wietl �redni� cen� produkt�w z kategorii 1 i 2(z rozdzieleniem na te kategorie)

SELECT AVG (UnitPrice), CategoryID
FROM Products
WHERE CategoryID IN (1,2)
GROUP BY CategoryID