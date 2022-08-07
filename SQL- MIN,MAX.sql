--MIN/MAX

--Wyœwietl cenê najtañszego produktu.

SELECT MIN (UnitPrice)
FROM Products

-- Wyœwietl cenê najdro¿szego produktu.

SELECT MAX (UnitPrice)
FROM Products

--Wyœwietl cenê najdro¿szego produktu spoœród produktów wycofnych.

SELECT MAX (Unitprice)
FROM Products
WHERE Discontinued=1

--Wyœwietl najni¿sz¹ cenê spoœród produktów z kategorii 3.

SELECT MIN(UnitPrice)
FROM Products
WHERE CategoryID=3

--Wyœwietl najni¿sz¹ cenê produktu w poszczególnych kategoriach (wymuszenie GROUP BY na kolumnie bez funkcji agreguj¹cej)

SELECT MIN (UnitPrice), CategoryID
FROM Products
GROUP BY CategoryID

--Wyœwietl najni¿sz¹ i najwy¿sz¹ cenê w kategorii 2.

SELECT MIN (UnitPrice) AS [MIN], MAX (UnitPrice) AS [MAX]
FROM Products
WHERE CategoryID=2

--Wyœwietl najni¿sz¹ i najwyzsz¹ cenê produktów w poszczególnych kategoriach.

SELECT MIN (UnitPrice) AS [MIN], MAX (UnitPrice) AS [MAX], CategoryID
FROM Products
GROUP BY CategoryID

--Wyœwietl nazwê firmy klienta, znajduj¹c¹ siê najbli¿ej poczatku alfabetu.

SELECT MIN (CompanyName)
FROM Customers
