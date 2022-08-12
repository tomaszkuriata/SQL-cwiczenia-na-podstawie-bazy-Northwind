--JOIN/INNER JOIN

/*Po³¹cz tabelê Region oraz Territories w jedn¹.
Wyniki zawêŸ do Terytoriów z opisem zaczynaj¹cym siê na "B".
Posortuj po TerritoryID rosn¹co.*/

SELECT *
FROM Region AS R
JOIN Territories as T
ON (R.RegionID=T.RegionID)
WHERE TerritoryDescription LIKE 'B%'
ORDER BY TerritoryID


/*Po³¹cz tabelê Territories z EmployeeTerritories.
Wyniki zaweŸ do Pracowników, Opisu Terytorium i Regionu, gdzie RegionID jest wiêksze od 2, 
a w Opisie Terytorium wystêpuje litera 'h'(ma³a lub du¿a).
Posortuj po Opisie Terytorium rosn¹co.*/

SELECT EmployeeID, TerritoryDescription , RegionID
FROM EmployeeTerritories AS ET
JOIN Territories AS T
ON (ET.TerritoryID=T.TerritoryID)
WHERE RegionID>2 
AND (TerritoryDescription LIKE '%H%' OR TerritoryDescription LIKE '%H%')
ORDER BY TerritoryDescription


/*Po³¹cz tabelê EmployeeTerritories z Employees.
Z kolumn Imiê, Nazwisko i Tytu³ stwórz jedn¹ kolumnê z aliasem 'Pracownik i Tytu³'(p³eæ).
Wyniki zawêŸ do Sprzedawców, przypisanych do Londynu lub miast zakoñczonych na 'd'.
Posortuj po Dacie rosn¹co.*/

SELECT  TitleOfCourtesy+' '+FirstName+' '+LastName  AS [Pracownik i tytu³]
FROM EmployeeTerritories AS ET
JOIN Employees AS E
ON(E.EmployeeID=ET.EmployeeID)
WHERE Title LIKE '%SALES%'
AND (City = 'London' OR City LIKE '%d')
ORDER BY BirthDate

/*Po³¹cz tabele Orders z Customers.
Sformatuj datê zamówienia by pokazywa³a miesi¹c i dzieñ - stwórz dla niej nazwê 
'Dzieñ zamówienia'.
Sformatuj Nazwê firmy klienta do wielkich liter - stwórz alias 'Klient'.
Wtnij nr.kierunkowy- stwórz alias 'Kierunkowy'.
Wyniki zawêŸ do Dostawców, gdzie nazwa zaczyna siê na 'A' lub koñczy na 'a'.
Dodatkowo, gdzie w nazwie Klienta wystêpuje 'the' oraz gdzie zamówienia przypisane 
s¹ do Pracowników z ID OD 3 DO 9.
Posortuj po 'Dzieñ zamówienia'malej¹co.*/

SELECT 
FORMAT (OrderDate,'MM-DD') AS [Dzieñ zamówienia], 
UPPER (CompanyName) AS [Klient], 
SUBSTRING (Phone,1,5) AS [Kierunkowy]
FROM Orders AS O
JOIN Customers AS c
ON (O.CustomerID=C.CustomerID)
WHERE (ShipName LIKE 'A%' OR ShipName LIKE '%a') AND (CompanyName LIKE '%THE%') AND (EmployeeID BETWEEN 3 AND 9)
ORDER BY OrderDate DESC


/*Wyswietl Dostawców (Suppliers) i ich Produkty. Wyœwietl nazwê dostawcy, adres dostawcy,
telefon, kraj dostawcy, nazwê produktu, cenê jednostkow¹.*/


SELECT s.CompanyName, s.Address, s.Phone, s.Country, p.ProductName, p.UnitPrice
FROM Suppliers AS S
JOIN Products AS P
ON (S.SupplierID=P.SupplierID)

-- Po³¹cz tabelê Produkty z tabel¹ Kategorie

SELECT *
FROM Products AS P
JOIN Categories AS C
ON(P.CategoryID=C.CategoryID)

/*Ogranicz wyniki nastepuj¹cych kolumn: CategoryName, ProductName, UnitPrice. 
Posortuj wyniki po nazwie kat.malej¹co.*/

SELECT C.CategoryName, P.ProductName, P.UnitPrice
FROM Products AS P
JOIN Categories AS C
ON ( P.CategoryID=c.CategoryID)
ORDER BY CategoryName desc

/*Ogranicz wyniki do produktów nale¿¹cych tylko do 
kategorii Seafood oraz Beverages, których cena jest mniejsza od 10.*/

SELECT c.CategoryName, p.UnitPrice
FROM Products AS P
JOIN Categories AS C
ON (P.CategoryID=C.CategoryID)
WHERE CategoryName IN ('SEAFOOD','Beverages') AND UnitPrice<10
ORDER BY CategoryName 

--Po³¹cz tabelê dostawców z tabel¹ produktów

SELECT*
FROM Suppliers AS S
JOIN Products AS P
ON(S.SupplierID=p.SupplierID)

--Wyœwietl tylko nazwê produktu, nazwê dostawcy oraz miasto i kraj, z którego dostawca pochodzi.

SELECT p.ProductName, s.CompanyName, s.City, s.Country
FROM Products AS P
JOIN Suppliers AS S
ON(P.SupplierID=s.SupplierID)

--ZawêŸ wyniki do rekordów, których dostawca jest z Hiszpanii lub UK.

SELECT s.CompanyName,s.ContactName, s.City, s.Country
FROM Suppliers AS S
JOIN Products AS P
ON (S.SupplierID=p.SupplierID)
WHERE Country IN ('Spain', 'UK')

--Po³¹cz tabelê zamówieñ z tabel¹ pracowników.Posortuj po ID pracownika

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
ORDER BY E.EmployeeID

--ZawêŸ wyniki wyszukiwania do zamówieñ obs³u¿onych przez pracownika o numerze ID 2,4,5

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
WHERE O.EmployeeID IN (2,4,5)

/*Ogranicz wyniki do tych, których kolumna ShipName w swojej wartoœci zawiera "res".
Posortuj po numerze ID pracownika rosn¹co.*/

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
WHERE ShipName LIKE '%RES%'
ORDER BY e.EmployeeID 

--Po³¹cz tabelê Orders z Shippers.(UWAGA NA KLUCZE)

SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)

--Wyniki zawêŸ do zamówieñ z Francji i Finlandii

SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)
WHERE o.ShipCountry IN ('France', 'Finland')

--Wyniki zawêŸ do tych obs³ugiwanych przez pracownika nr 2 i posortuj po dacie zamówienia od najnowszego do najstarszego


SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)
WHERE o.ShipCountry IN ('France', 'Finland')
AND O.EmployeeID=2
ORDER BY OrderDate


