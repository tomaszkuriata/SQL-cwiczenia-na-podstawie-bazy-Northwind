--Operatory matematyczne.

/*Wyœwietl nazwê produktu, jakiego aktualn¹ cenê jednostkow¹ oraz cenê jak¹ mia³by ten produkt po
zwiêkszeniu jej o 5. Dodatkow¹ kolumnê ze zwiêkszon¹ cen¹ nazwij "Po podwy¿ce".*/

USE Northwind
SELECT ProductName, UnitPrice, UnitPrice+5 AS [Po podwy¿ce]
FROM Products
ORDER BY ProductName

/*Wyœwietl nazwê produktu, jego aktualn¹ cenê jednostkow¹ oraz cenê jak¹ mia³by ten produkt 
po zmniejszeniu jej o 2. Dodatkow¹ kolumnê ze zmniejszon¹ cen¹ nazwij "Po obni¿ce".*/

SELECT ProductName, UnitPrice, UnitPrice-2 AS [Po obni¿ce]
FROM Products
ORDER BY ProductName

/*Wyœwietl nazwê produktu, jego aktualn¹ cenê, stan na magazynie oraz kwotê jak¹ mo¿na uzyskaæ sprzedaj¹c ca³¹
iloœæ danego produktu. Dodatkow¹ kolumnê z kwot¹ jak¹ mo¿na uzyskaæ ze sprzeda¿y danego produktu nazwij "Totalny zysk". 
Zmien jezyk kolumn na jêzyk polski. Posortuj po Zysku rosn¹co*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena], UnitsInStock AS [Stan magazynowy], UnitPrice*UnitsInStock AS [Totlny zysk]
FROM Products

--Wyœwietl nazwê produktu, jego aktualn¹ cenê oraz cenê po rabacie 15%. Dodatkow¹ kolumnê z kwot¹ rabatowa nazwij "Cena Promocyjna"

SELECT ProductName, UnitPrice, UnitPrice- (UnitPrice *0.15)  AS [Cena Promocyjna]
FROM Products

/*Wyœwietl nazwê produktu, jego aktualn¹ cenê oraz wyprzeda¿ow¹ mniejsz¹ o po³owê. 
Dodatkow¹ kolumnê z kwot¹ wyprzeda¿ow¹  nazwij "Wyprzeda¿".*/

SELECT ProductName, UnitPrice, UnitPrice /2 AS [Wyprzeda¿]
FROM Products

--Wyœwietlzwrot grzecznoœciowy i nazwisko pracowników oraz po³¹czenie tych danych jako trzecia kolumna "Pracownik".

SELECT TitleOfCourtesy, LastName, (TitleOfCourtesy+''+ LastName) AS [Pracownik]
FROM Employees

--Wyœwietl imiê inazwisko pracowników oraz trzeci¹ kolumnê z wyœwietlonym imieniem oraz nazwiskiem.Kolumnê nazwij""Imiê i Nazwisko".

SELECT FirstName, LastName, (FirstName+''+LastName) AS [Imiê i Nazwisko]
FROM Employees