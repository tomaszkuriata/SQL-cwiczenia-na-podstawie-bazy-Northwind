--CASE

--Wyœwietl nazwy produktow oraz dodatkow¹ kolumnê z informacj¹ czy jest jeszcze dostepny w magazynie.

SELECT ProductName,
		(CASE WHEN UnitsInStock=0
		THEN 'NIE'
		ELSE 'TAK'
		END) AS [DOSTÊPNY]
FROM Products

/*Wyswietl nazwy produktów oraz dodatkow¹ kolumnê z informacja czy produkt ten jest tani, czy drogi.
Przyjmij, ¿e tani to cena jednostkowa do 20 w³¹cznie*/

SELECT ProductName,
		( CASE WHEN UnitPrice <= 20
		THEN 'TANI'
		ELSE 'DROGI'
		END) AS [TANI/DROGI]
FROM Products

/*Wyœwietl z tabeli Customers: nazwê firmy, imiê i nazwisko osoby kontaktowej oraz w 
dodatkowej kolumnie dla klientów, których ContactName zawiera "Sales" wyswietl "Sprzeda¿"*/

SELECT CompanyName, ContactName,
		(CASE WHEN ContactName LIKE '%Sales%'
		THEN 'SPRZEDA¯'
		END) AS [STANOWISKO]
FROM Customers

/*Wyœwietl imiê i nazwisko pracowników (w lewej kolumnie), ich stanowisko oraz 
je¿eli stanowisko zawiera s³owo "Manager" w dodatkowej kolumnie "rola" wyswietl "Zarz¹dzanie*/

SELECT (FirstName+ ''+ LastName), Title,
		(CASE WHEN Title LIKE '%Manager%'
		THEN 'Zarz¹dzanie'
		END) AS rola
			   		 
FROM Employees

