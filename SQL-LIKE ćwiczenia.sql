--LIKE

--Wy�wietl nazw� firmy i osob� kontaktow� dla klient�w z Niemiec.Posortuj po nazwie firmy malej�co.

SELECT CompanyName, ContactName
FROM Customers
WHERE Country LIKE 'Germany'
ORDER BY CompanyName DESC

SELECT CompanyName, ContactName
FROM Customers
WHERE Country = 'Germany'
ORDER BY CompanyName DESC 

--Wy�wietl pracownik�w, kt�rych stanowisko zaczyna sie od s�owa Sales. Posortuj po stanowisku rosn�co.

SELECT *
FROM Employees
WHERE Title LIKE 'Sales%'
ORDER BY Title

--Wy�wietl praconik�w, kt�rych stanowisko zawiera s�owo Sales. Posortuj po stanowisku malej�co.

SELECT *
FROM Employees
WHERE Title LIKE '%Sales%'
ORDER BY Title DESC

--Wy�wietl wszystkich pracownik�w, kt�rych nazwisko zaczyna sie na liter� D.

SELECT *
FROM Employees
WHERE LastName LIKE 'D%'

--Wy�wietl wszystkich pracownik�w , dla kt�rych zwrot grzeczno�ciowy ko�czy sie na "r".

SELECT *
FROM Employees
WHERE TitleOfCourtesy LIKE '%r.'

/*Wy�wietl osoby kontaktowe klient�w, ktorzy maj� dowolne nazwisko, ale ich imi� zaczyna si�
na A i ma 3 litery*/

SELECT ContactName
FROM Customers
WHERE ContactName LIKE 'A__ %'

--Wy�wietl produkty, kt�rych nazwa jest 4-literowa.

SELECT *
FROM Products
WHERE ProductName LIKE '____'

--Wy�wietl produkty, kt�rych ostatni wyraz nazwy ma 3 litery.

SELECT *
FROM Products
WHERE ProductName LIKE '% ___'

