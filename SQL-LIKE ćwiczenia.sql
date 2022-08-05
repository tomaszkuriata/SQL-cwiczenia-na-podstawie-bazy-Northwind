--LIKE

--Wyœwietl nazwê firmy i osobê kontaktow¹ dla klientów z Niemiec.Posortuj po nazwie firmy malej¹co.

SELECT CompanyName, ContactName
FROM Customers
WHERE Country LIKE 'Germany'
ORDER BY CompanyName DESC

SELECT CompanyName, ContactName
FROM Customers
WHERE Country = 'Germany'
ORDER BY CompanyName DESC 

--Wyœwietl pracowników, których stanowisko zaczyna sie od s³owa Sales. Posortuj po stanowisku rosn¹co.

SELECT *
FROM Employees
WHERE Title LIKE 'Sales%'
ORDER BY Title

--Wyœwietl praconików, których stanowisko zawiera s³owo Sales. Posortuj po stanowisku malej¹co.

SELECT *
FROM Employees
WHERE Title LIKE '%Sales%'
ORDER BY Title DESC

--Wyœwietl wszystkich pracowników, których nazwisko zaczyna sie na literê D.

SELECT *
FROM Employees
WHERE LastName LIKE 'D%'

--Wyœwietl wszystkich pracowników , dla których zwrot grzecznoœciowy koñczy sie na "r".

SELECT *
FROM Employees
WHERE TitleOfCourtesy LIKE '%r.'

/*Wyœwietl osoby kontaktowe klientów, ktorzy maj¹ dowolne nazwisko, ale ich imiê zaczyna siê
na A i ma 3 litery*/

SELECT ContactName
FROM Customers
WHERE ContactName LIKE 'A__ %'

--Wyœwietl produkty, których nazwa jest 4-literowa.

SELECT *
FROM Products
WHERE ProductName LIKE '____'

--Wyœwietl produkty, których ostatni wyraz nazwy ma 3 litery.

SELECT *
FROM Products
WHERE ProductName LIKE '% ___'

