--MIN/MAX

--Wy�wietl cen� najta�szego produktu.

SELECT MIN (UnitPrice)
FROM Products

-- Wy�wietl cen� najdro�szego produktu.

SELECT MAX (UnitPrice)
FROM Products

--Wy�wietl cen� najdro�szego produktu spo�r�d produkt�w wycofnych.

SELECT MAX (Unitprice)
FROM Products
WHERE Discontinued=1

--Wy�wietl najni�sz� cen� spo�r�d produkt�w z kategorii 3.

SELECT MIN(UnitPrice)
FROM Products
WHERE CategoryID=3

--Wy�wietl najni�sz� cen� produktu w poszczeg�lnych kategoriach (wymuszenie GROUP BY na kolumnie bez funkcji agreguj�cej)

SELECT MIN (UnitPrice), CategoryID
FROM Products
GROUP BY CategoryID

--Wy�wietl najni�sz� i najwy�sz� cen� w kategorii 2.

SELECT MIN (UnitPrice) AS [MIN], MAX (UnitPrice) AS [MAX]
FROM Products
WHERE CategoryID=2

--Wy�wietl najni�sz� i najwyzsz� cen� produkt�w w poszczeg�lnych kategoriach.

SELECT MIN (UnitPrice) AS [MIN], MAX (UnitPrice) AS [MAX], CategoryID
FROM Products
GROUP BY CategoryID

--Wy�wietl nazw� firmy klienta, znajduj�c� si� najbli�ej poczatku alfabetu.

SELECT MIN (CompanyName)
FROM Customers
