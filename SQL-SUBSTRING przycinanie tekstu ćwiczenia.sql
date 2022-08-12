--SUBSTRING, przycinanie tekstu

--Wyœwietl pierwsze 3 litery imion pracowników.

USE Northwind

SELECT SUBSTRING (FirstName, 1,3)
FROM Employees

--Wyœwietl po³¹czenie pierwszych trzech liter imienia i pierwszych 4 liter nazwiska oraz ich stanowiska.

SELECT (SUBSTRING (FirstName,1,3) + SUBSTRING (LastName,1,4)), Title
FROM Employees

--Wyœwietl imiê i nazwisko pracowników oraz trzeci¹ kolumnê z tymi danymi w formie: "J.Kowalski"

SELECT FirstName, LastName , (SUBSTRING(FirstName,1,1)+ '. '+LastName) 
FROM Employees

--Wyœwietl imie i nazwisko pracowników o inicja³ach AF

SELECT FirstName, LastName
FROM Employees
WHERE SUBSTRING (FirstName,1,1)='A'AND SUBSTRING (LastName,1,1)='F'