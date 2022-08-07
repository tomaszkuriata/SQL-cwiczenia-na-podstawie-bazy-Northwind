--Count

--Wy�wietl liczb� klient�w z Niemiec.

USE Northwind
SELECT COUNT (*) 
FROM Customers
WHERE Country='Germany'

--Wy�wietl ile jest wszystkich zam�wie�.

SELECT COUNT(*)
FROM Orders

--Wy�wietl ile zam�wie� obs�u�y� pracownik o ID 5.

SELECT COUNT (*) 
FROM Orders
WHERE EmployeeID= 5

--Wy�wietl ile jest wszystkich produkt�w.

SELECT COUNT (*)
FROM Products

--Wy�wietl ile produkt�w zosta�o wycofanych(kolumna Discoutinued=1).

SELECT COUNT (*)
FROM Products
WHERE Discontinued=1

/*Wy�wietl ile zam�wie� obs�u�y� kazdy pracownik(wy�wietl liczb� tych zam�wie� oraz numer ID pracownika 
-> wymuszenie u�ycia GROUP BY na kolumnie bez funkcji agreguj�cej)*/

SELECT COUNT (*), EmployeeID
FROM Orders
GROUP BY EmployeeID

--Wy�wietl ile produkt�w jest z poszczeg�lnej kategorii.

SELECT COUNT(*), CategoryID
FROM Products
GROUP BY CategoryID

--Wy�wietl ile jest produkt�w o cenie z zakresu 10-15.

SELECT COUNT(*)
FROM Products
WHERE UnitPrice BETWEEN 10 AND 15
