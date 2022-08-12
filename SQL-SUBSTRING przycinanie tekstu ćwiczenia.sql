--SUBSTRING, przycinanie tekstu

--Wy�wietl pierwsze 3 litery imion pracownik�w.

USE Northwind

SELECT SUBSTRING (FirstName, 1,3)
FROM Employees

--Wy�wietl po��czenie pierwszych trzech liter imienia i pierwszych 4 liter nazwiska oraz ich stanowiska.

SELECT (SUBSTRING (FirstName,1,3) + SUBSTRING (LastName,1,4)), Title
FROM Employees

--Wy�wietl imi� i nazwisko pracownik�w oraz trzeci� kolumn� z tymi danymi w formie: "J.Kowalski"

SELECT FirstName, LastName , (SUBSTRING(FirstName,1,1)+ '. '+LastName) 
FROM Employees

--Wy�wietl imie i nazwisko pracownik�w o inicja�ach AF

SELECT FirstName, LastName
FROM Employees
WHERE SUBSTRING (FirstName,1,1)='A'AND SUBSTRING (LastName,1,1)='F'