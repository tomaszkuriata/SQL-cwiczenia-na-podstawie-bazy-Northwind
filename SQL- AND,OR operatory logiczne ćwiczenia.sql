--SELECT z operatorem logicznym AND, OR

--Wyœwietl produkty nale¿¹ce do kategorii 1 i których cena jest wieksza od 15.

USE Northwind

SELECT *
FROM Products
WHERE CategoryID = 1 AND UnitPrice> 15

--Wyœwietl klientów z Polski lub Hiszpanii.

SELECT ContactName
FROM Customers
WHERE Country= 'Poland' OR Country= 'Spain'
ORDER BY Country

--Wyœwietl zamówienia z UK ale nie z Londynu. Posortuj miastami rosn¹co.

SELECT *
FROM Orders
WHERE ShipCountry= 'UK' AND ShipCity != 'London'
ORDER BY ShipCity

--Wyœwietl produkty, które zosta³y wycofane(kolumna Discotinued=1) i ich cena jest mniejsza od 20.

SELECT *
FROM Products
WHERE Discontinued=1 AND UnitPrice< 20

/*Wyœwietl produkty, których nie ma ju¿ w magazynie oraz te, których iloœæ w magazynie przekracza 100 sztuk.
Posortuj wed³ug iloœci w magazynie rosn¹co.*/

SELECT *
FROM Products
WHERE UnitsInStock=0 OR UnitsInStock>100
ORDER BY UnitsInStock

/*Wyœwietl wszystkich pracowników w formacie: Nazwisko, Imiê, Kraj. Nazwij tak nag³owki kolumn.
Ogranicz wyniki do pracowników ze Stanów Zjednoczonych, których imiona koñcz¹ siê na literê "t".*/

SELECT LastName AS [Nazwisko], FirstName AS [Imiê], Country AS [Kraj]
FROM Employees
WHERE Country = 'USA' AND FirstName LIKE '%t'

/*Wyœwietl wszystkich pracowników w formacie: Nazwisko, Imiê, Kraj. Nazwij tak nag³owki kolumn.
Ogranicz wyniki do pracowników ze Stanów Zjednoczonych oraz tych, których imiona zawieraj¹ "re".*/

SELECT LastName AS [Nazwisko], FirstName AS [Imiê], Country AS [Kraj]
FROM Employees
WHERE Country= 'USA' AND FirstName LIKE '%re%'

/*Wyœwietl produkty, których cena jednostkowa jest z zakresu 50-100. Utwórz dwa zapytania. Jedno z u¿yciem operatorów logicznych, 
a drugie z u¿yciem BETWEEN.Wyniki posortuj Cena rosn¹co*/

SELECT *
FROM Products
WHERE UnitPrice >=50 AND UnitPrice <=100
ORDER BY UnitPrice

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 50 AND 100
ORDER BY UnitPrice

--Wyœwietl klientów z Francji, których osoba kontaktowa ma stanowisko zawieraj¹ce s³owo Manager.

SELECT *
FROM Customers
WHERE Country = 'France' AND ContactTitle LIKE '%Manager%'

--Wyœwietl produkty z kategorii 1 oraz 2.

SELECT *
FROM Products
WHERE CategoryID = 1 OR CategoryID= 2

SELECT *
FROM Products
WHERE CategoryID IN (1,2)

--Wyœwietl produkty z kategorii 1, których cena jest wiêksza od 15 ale mniejsza od 20.

SELECT *
FROM Products
WHERE CategoryID =1 AND UnitPrice > 15 AND UnitPrice <20

--Wyœwietl produkty z kategorii 1, których cena jest mniejsza od 15 lub wiêksza od 20.

SELECT *
FROM Products
WHERE CategoryID=1 AND ( UnitPrice <15 OR UnitPrice >20)

--Wyœwietl nazwê i cenê produktów, których cena jest z zakresu od 0 do 10 lub które nazywaj¹ sie "Tofu".Posortuj po cenie rosn¹co.

SELECT ProductName, UnitPrice
FROM Products
WHERE (UnitPrice > 0 AND UnitPrice<=10) OR ProductName= 'Tofu'
ORDER BY UnitPrice

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 0 AND 10 OR ProductName= 'Tofu'
ORDER BY UnitPrice

--Wyœwietl imiê i nazwisko pracowników o inicja³ach "AF".

SELECT FirstName, LastName
FROM Employees
WHERE FirstName LIKE 'A%' AND LastName LIKE'F%'

/* Wyœwietl klientów pochodz¹cych z Portugalii lub Hiszpanii, których osoba kontaktowa ma stanowisko sprzeda¿owe
(w nazwie stanowiska zawarte jest s³owo Sales)*/

SELECT *
FROM Customers
WHERE Country IN ('Portugal', 'Spain') AND ContactTitle LIKE 'Sales%'

--Wyœwietl klientów pochodz¹cych z Niemiec lub z UK, dla których FAX nie posiada danych.

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Spain') AND Fax IS NULL

SELECT *
FROM Customers
WHERE (Country='Germany' OR Country='Spain') AND Fax IS NULL

/*Wyœwietl nazwy produktów, ich cenê, liczbê w magazynie oraz zamówion¹ liczbê, 
dla których nie ma wystarczaj¹cych iloœæi aby pokryæ zamówienie, a koszt sztuki wynosi co najmniej 19.00*/

SELECT ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM Products
WHERE (UnitsInStock-UnitsOnOrder)<0 AND UnitPrice>=19.00

SELECT  ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock<UnitsOnOrder AND UnitPrice>=19
ORDER BY  UnitsInStock

