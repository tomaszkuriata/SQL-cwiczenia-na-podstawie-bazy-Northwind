--Count

--Wyœwietl liczbê klientów z Niemiec.

USE Northwind
SELECT COUNT (*) 
FROM Customers
WHERE Country='Germany'

--Wyœwietl ile jest wszystkich zamówieñ.

SELECT COUNT(*)
FROM Orders

--Wyœwietl ile zamówieñ obs³u¿y³ pracownik o ID 5.

SELECT COUNT (*) 
FROM Orders
WHERE EmployeeID= 5

--Wyœwietl ile jest wszystkich produktów.

SELECT COUNT (*)
FROM Products

--Wyœwietl ile produktów zosta³o wycofanych(kolumna Discoutinued=1).

SELECT COUNT (*)
FROM Products
WHERE Discontinued=1

/*Wyœwietl ile zamówieñ obs³u¿y³ kazdy pracownik(wyœwietl liczbê tych zamówieñ oraz numer ID pracownika 
-> wymuszenie u¿ycia GROUP BY na kolumnie bez funkcji agreguj¹cej)*/

SELECT COUNT (*), EmployeeID
FROM Orders
GROUP BY EmployeeID

--Wyœwietl ile produktów jest z poszczególnej kategorii.

SELECT COUNT(*), CategoryID
FROM Products
GROUP BY CategoryID

--Wyœwietl ile jest produktów o cenie z zakresu 10-15.

SELECT COUNT(*)
FROM Products
WHERE UnitPrice BETWEEN 10 AND 15
