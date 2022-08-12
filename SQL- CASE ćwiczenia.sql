--CASE

--Wy�wietl nazwy produktow oraz dodatkow� kolumn� z informacj� czy jest jeszcze dostepny w magazynie.

SELECT ProductName,
		(CASE WHEN UnitsInStock=0
		THEN 'NIE'
		ELSE 'TAK'
		END) AS [DOST�PNY]
FROM Products

/*Wyswietl nazwy produkt�w oraz dodatkow� kolumn� z informacja czy produkt ten jest tani, czy drogi.
Przyjmij, �e tani to cena jednostkowa do 20 w��cznie*/

SELECT ProductName,
		( CASE WHEN UnitPrice <= 20
		THEN 'TANI'
		ELSE 'DROGI'
		END) AS [TANI/DROGI]
FROM Products

/*Wy�wietl z tabeli Customers: nazw� firmy, imi� i nazwisko osoby kontaktowej oraz w 
dodatkowej kolumnie dla klient�w, kt�rych ContactName zawiera "Sales" wyswietl "Sprzeda�"*/

SELECT CompanyName, ContactName,
		(CASE WHEN ContactName LIKE '%Sales%'
		THEN 'SPRZEDA�'
		END) AS [STANOWISKO]
FROM Customers

/*Wy�wietl imi� i nazwisko pracownik�w (w lewej kolumnie), ich stanowisko oraz 
je�eli stanowisko zawiera s�owo "Manager" w dodatkowej kolumnie "rola" wyswietl "Zarz�dzanie*/

SELECT (FirstName+ ''+ LastName), Title,
		(CASE WHEN Title LIKE '%Manager%'
		THEN 'Zarz�dzanie'
		END) AS rola
			   		 
FROM Employees

