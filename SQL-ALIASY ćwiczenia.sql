/*ALIASY*/

--Wy�wietl nast�puj�ce dane z tabeli Suppliers:Company Name, City, Country i zamie� nazwy kolumn na j�zyk polski

USE Northwind
SELECT CompanyName AS [Nazwa firmy], City AS [Miasto], Country AS [Kraj]
FROM Suppliers

--Wy�wietl nast�puj�ce dane wszystkich produkt�w: nazwa produktu, ilo�� na jednostk� i cena jednostkowa. Zmie� nazwy kolumn na j�zyk polski

SELECT ProductName AS [Nazwa produktu], QuantityPerUnit AS [Ilo�� na jednostk�], UnitPrice AS [Cena jednostkowa]
FROM Products

/*Wy�wietl nast�puj�ce dane wszystkich zam�wie�: Data zam�wienia, Numer ID klienta, kt�ry z�o�y� zam�wienia, 
numer ID pracownika, kt�ry zrealizowa� to zam�wienia. Zmie� nazwy kolumn na j�zyk polski*/

SELECT OrderDate AS [Data zam�wienia], CustomerID AS [Numer ID klienta], EmployeeID AS [Numer ID pracownika]
FROM [dbo].[Orders]

--Wy�wietl imi�, nazwisko, dat� zatrudnienia oraz kraj dla wszystkich rekord�w z tabeli Employees.Zmie� nazwy kolumn na j�zyk polski

SELECT FirstName AS [Imi�], LastName AS [Nazwisko], HireDate AS [Data zatrudnienia], Country AS [Kraj]
FROM Employees

/**Wy�wietl wszystkich spedytor�w , ale ogranicz liczb� kolumn do : Nazwy firmy i Telefonu.
Nadaj tym kolumnom polskie nazwy, a tabeli Spedytorzy nadaj alias S.**/

SELECT CompanyName AS [Nazwa firmy], Phone AS [Telefon]
FROM Shippers AS S