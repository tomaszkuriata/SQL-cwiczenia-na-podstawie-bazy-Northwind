--SELECT z operatorem logicznym AND, OR

--Wy�wietl produkty nale��ce do kategorii 1 i kt�rych cena jest wieksza od 15.

USE Northwind

SELECT *
FROM Products
WHERE CategoryID = 1 AND UnitPrice> 15

--Wy�wietl klient�w z Polski lub Hiszpanii.

SELECT ContactName
FROM Customers
WHERE Country= 'Poland' OR Country= 'Spain'
ORDER BY Country

--Wy�wietl zam�wienia z UK ale nie z Londynu. Posortuj miastami rosn�co.

SELECT *
FROM Orders
WHERE ShipCountry= 'UK' AND ShipCity != 'London'
ORDER BY ShipCity

--Wy�wietl produkty, kt�re zosta�y wycofane(kolumna Discotinued=1) i ich cena jest mniejsza od 20.

SELECT *
FROM Products
WHERE Discontinued=1 AND UnitPrice< 20

/*Wy�wietl produkty, kt�rych nie ma ju� w magazynie oraz te, kt�rych ilo�� w magazynie przekracza 100 sztuk.
Posortuj wed�ug ilo�ci w magazynie rosn�co.*/

SELECT *
FROM Products
WHERE UnitsInStock=0 OR UnitsInStock>100
ORDER BY UnitsInStock

/*Wy�wietl wszystkich pracownik�w w formacie: Nazwisko, Imi�, Kraj. Nazwij tak nag�owki kolumn.
Ogranicz wyniki do pracownik�w ze Stan�w Zjednoczonych, kt�rych imiona ko�cz� si� na liter� "t".*/

SELECT LastName AS [Nazwisko], FirstName AS [Imi�], Country AS [Kraj]
FROM Employees
WHERE Country = 'USA' AND FirstName LIKE '%t'

/*Wy�wietl wszystkich pracownik�w w formacie: Nazwisko, Imi�, Kraj. Nazwij tak nag�owki kolumn.
Ogranicz wyniki do pracownik�w ze Stan�w Zjednoczonych oraz tych, kt�rych imiona zawieraj� "re".*/

SELECT LastName AS [Nazwisko], FirstName AS [Imi�], Country AS [Kraj]
FROM Employees
WHERE Country= 'USA' AND FirstName LIKE '%re%'

/*Wy�wietl produkty, kt�rych cena jednostkowa jest z zakresu 50-100. Utw�rz dwa zapytania. Jedno z u�yciem operator�w logicznych, 
a drugie z u�yciem BETWEEN.Wyniki posortuj Cena rosn�co*/

SELECT *
FROM Products
WHERE UnitPrice >=50 AND UnitPrice <=100
ORDER BY UnitPrice

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 50 AND 100
ORDER BY UnitPrice

--Wy�wietl klient�w z Francji, kt�rych osoba kontaktowa ma stanowisko zawieraj�ce s�owo Manager.

SELECT *
FROM Customers
WHERE Country = 'France' AND ContactTitle LIKE '%Manager%'

--Wy�wietl produkty z kategorii 1 oraz 2.

SELECT *
FROM Products
WHERE CategoryID = 1 OR CategoryID= 2

SELECT *
FROM Products
WHERE CategoryID IN (1,2)

--Wy�wietl produkty z kategorii 1, kt�rych cena jest wi�ksza od 15 ale mniejsza od 20.

SELECT *
FROM Products
WHERE CategoryID =1 AND UnitPrice > 15 AND UnitPrice <20

--Wy�wietl produkty z kategorii 1, kt�rych cena jest mniejsza od 15 lub wi�ksza od 20.

SELECT *
FROM Products
WHERE CategoryID=1 AND ( UnitPrice <15 OR UnitPrice >20)

--Wy�wietl nazw� i cen� produkt�w, kt�rych cena jest z zakresu od 0 do 10 lub kt�re nazywaj� sie "Tofu".Posortuj po cenie rosn�co.

SELECT ProductName, UnitPrice
FROM Products
WHERE (UnitPrice > 0 AND UnitPrice<=10) OR ProductName= 'Tofu'
ORDER BY UnitPrice

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 0 AND 10 OR ProductName= 'Tofu'
ORDER BY UnitPrice

--Wy�wietl imi� i nazwisko pracownik�w o inicja�ach "AF".

SELECT FirstName, LastName
FROM Employees
WHERE FirstName LIKE 'A%' AND LastName LIKE'F%'

/* Wy�wietl klient�w pochodz�cych z Portugalii lub Hiszpanii, kt�rych osoba kontaktowa ma stanowisko sprzeda�owe
(w nazwie stanowiska zawarte jest s�owo Sales)*/

SELECT *
FROM Customers
WHERE Country IN ('Portugal', 'Spain') AND ContactTitle LIKE 'Sales%'

--Wy�wietl klient�w pochodz�cych z Niemiec lub z UK, dla kt�rych FAX nie posiada danych.

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Spain') AND Fax IS NULL

SELECT *
FROM Customers
WHERE (Country='Germany' OR Country='Spain') AND Fax IS NULL

/*Wy�wietl nazwy produkt�w, ich cen�, liczb� w magazynie oraz zam�wion� liczb�, 
dla kt�rych nie ma wystarczaj�cych ilo��i aby pokry� zam�wienie, a koszt sztuki wynosi co najmniej 19.00*/

SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM Products
WHERE (UnitsInStock-UnitsOnOrder)<0 AND UnitPrice>=19.00

SELECT  ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock<UnitsOnOrder AND UnitPrice>=19
ORDER BY  UnitsInStock

