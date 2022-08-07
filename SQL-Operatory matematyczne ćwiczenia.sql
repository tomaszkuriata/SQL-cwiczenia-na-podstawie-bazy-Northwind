--Operatory matematyczne.

/*Wy�wietl nazw� produktu, jakiego aktualn� cen� jednostkow� oraz cen� jak� mia�by ten produkt po
zwi�kszeniu jej o 5. Dodatkow� kolumn� ze zwi�kszon� cen� nazwij "Po podwy�ce".*/

USE Northwind
SELECT ProductName, UnitPrice, UnitPrice+5 AS [Po podwy�ce]
FROM Products
ORDER BY ProductName

/*Wy�wietl nazw� produktu, jego aktualn� cen� jednostkow� oraz cen� jak� mia�by ten produkt 
po zmniejszeniu jej o 2. Dodatkow� kolumn� ze zmniejszon� cen� nazwij "Po obni�ce".*/

SELECT ProductName, UnitPrice, UnitPrice-2 AS [Po obni�ce]
FROM Products
ORDER BY ProductName

/*Wy�wietl nazw� produktu, jego aktualn� cen�, stan na magazynie oraz kwot� jak� mo�na uzyska� sprzedaj�c ca��
ilo�� danego produktu. Dodatkow� kolumn� z kwot� jak� mo�na uzyska� ze sprzeda�y danego produktu nazwij "Totalny zysk". 
Zmien jezyk kolumn na j�zyk polski. Posortuj po Zysku rosn�co*/

SELECT ProductName AS [Nazwa produktu], UnitPrice AS [Cena], UnitsInStock AS [Stan magazynowy], UnitPrice*UnitsInStock AS [Totlny zysk]
FROM Products

--Wy�wietl nazw� produktu, jego aktualn� cen� oraz cen� po rabacie 15%. Dodatkow� kolumn� z kwot� rabatowa nazwij "Cena Promocyjna"

SELECT ProductName, UnitPrice, UnitPrice- (UnitPrice *0.15)  AS [Cena Promocyjna]
FROM Products

/*Wy�wietl nazw� produktu, jego aktualn� cen� oraz wyprzeda�ow� mniejsz� o po�ow�. 
Dodatkow� kolumn� z kwot� wyprzeda�ow�  nazwij "Wyprzeda�".*/

SELECT ProductName, UnitPrice, UnitPrice /2 AS [Wyprzeda�]
FROM Products

--Wy�wietlzwrot grzeczno�ciowy i nazwisko pracownik�w oraz po��czenie tych danych jako trzecia kolumna "Pracownik".

SELECT TitleOfCourtesy, LastName, (TitleOfCourtesy+''+ LastName) AS [Pracownik]
FROM Employees

--Wy�wietl imi� inazwisko pracownik�w oraz trzeci� kolumn� z wy�wietlonym imieniem oraz nazwiskiem.Kolumn� nazwij""Imi� i Nazwisko".

SELECT FirstName, LastName, (FirstName+''+LastName) AS [Imi� i Nazwisko]
FROM Employees