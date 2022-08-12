--JOIN/INNER JOIN

/*Po��cz tabel� Region oraz Territories w jedn�.
Wyniki zaw� do Terytori�w z opisem zaczynaj�cym si� na "B".
Posortuj po TerritoryID rosn�co.*/

SELECT *
FROM Region AS R
JOIN Territories as T
ON (R.RegionID=T.RegionID)
WHERE TerritoryDescription LIKE 'B%'
ORDER BY TerritoryID


/*Po��cz tabel� Territories z EmployeeTerritories.
Wyniki zawe� do Pracownik�w, Opisu Terytorium i Regionu, gdzie RegionID jest wi�ksze od 2, 
a w Opisie Terytorium wyst�puje litera 'h'(ma�a lub du�a).
Posortuj po Opisie Terytorium rosn�co.*/

SELECT EmployeeID, TerritoryDescription , RegionID
FROM EmployeeTerritories AS ET
JOIN Territories AS T
ON (ET.TerritoryID=T.TerritoryID)
WHERE RegionID>2 
AND (TerritoryDescription LIKE '%H%' OR TerritoryDescription LIKE '%H%')
ORDER BY TerritoryDescription


/*Po��cz tabel� EmployeeTerritories z Employees.
Z kolumn Imi�, Nazwisko i Tytu� stw�rz jedn� kolumn� z aliasem 'Pracownik i Tytu�'(p�e�).
Wyniki zaw� do Sprzedawc�w, przypisanych do Londynu lub miast zako�czonych na 'd'.
Posortuj po Dacie rosn�co.*/

SELECT  TitleOfCourtesy+' '+FirstName+' '+LastName  AS [Pracownik i tytu�]
FROM EmployeeTerritories AS ET
JOIN Employees AS E
ON(E.EmployeeID=ET.EmployeeID)
WHERE Title LIKE '%SALES%'
AND (City = 'London' OR City LIKE '%d')
ORDER BY BirthDate

/*Po��cz tabele Orders z Customers.
Sformatuj dat� zam�wienia by pokazywa�a miesi�c i dzie� - stw�rz dla niej nazw� 
'Dzie� zam�wienia'.
Sformatuj Nazw� firmy klienta do wielkich liter - stw�rz alias 'Klient'.
Wtnij nr.kierunkowy- stw�rz alias 'Kierunkowy'.
Wyniki zaw� do Dostawc�w, gdzie nazwa zaczyna si� na 'A' lub ko�czy na 'a'.
Dodatkowo, gdzie w nazwie Klienta wyst�puje 'the' oraz gdzie zam�wienia przypisane 
s� do Pracownik�w z ID OD 3 DO 9.
Posortuj po 'Dzie� zam�wienia'malej�co.*/

SELECT 
FORMAT (OrderDate,'MM-DD') AS [Dzie� zam�wienia], 
UPPER (CompanyName) AS [Klient], 
SUBSTRING (Phone,1,5) AS [Kierunkowy]
FROM Orders AS O
JOIN Customers AS c
ON (O.CustomerID=C.CustomerID)
WHERE (ShipName LIKE 'A%' OR ShipName LIKE '%a') AND (CompanyName LIKE '%THE%') AND (EmployeeID BETWEEN 3 AND 9)
ORDER BY OrderDate DESC


/*Wyswietl Dostawc�w (Suppliers) i ich Produkty. Wy�wietl nazw� dostawcy, adres dostawcy,
telefon, kraj dostawcy, nazw� produktu, cen� jednostkow�.*/


SELECT s.CompanyName, s.Address, s.Phone, s.Country, p.ProductName, p.UnitPrice
FROM Suppliers AS S
JOIN Products AS P
ON (S.SupplierID=P.SupplierID)

-- Po��cz tabel� Produkty z tabel� Kategorie

SELECT *
FROM Products AS P
JOIN Categories AS C
ON(P.CategoryID=C.CategoryID)

/*Ogranicz wyniki nastepuj�cych kolumn: CategoryName, ProductName, UnitPrice. 
Posortuj wyniki po nazwie kat.malej�co.*/

SELECT C.CategoryName, P.ProductName, P.UnitPrice
FROM Products AS P
JOIN Categories AS C
ON ( P.CategoryID=c.CategoryID)
ORDER BY CategoryName desc

/*Ogranicz wyniki do produkt�w nale��cych tylko do 
kategorii Seafood oraz Beverages, kt�rych cena jest mniejsza od 10.*/

SELECT c.CategoryName, p.UnitPrice
FROM Products AS P
JOIN Categories AS C
ON (P.CategoryID=C.CategoryID)
WHERE CategoryName IN ('SEAFOOD','Beverages') AND UnitPrice<10
ORDER BY CategoryName 

--Po��cz tabel� dostawc�w z tabel� produkt�w

SELECT*
FROM Suppliers AS S
JOIN Products AS P
ON(S.SupplierID=p.SupplierID)

--Wy�wietl tylko nazw� produktu, nazw� dostawcy oraz miasto i kraj, z kt�rego dostawca pochodzi.

SELECT p.ProductName, s.CompanyName, s.City, s.Country
FROM Products AS P
JOIN Suppliers AS S
ON(P.SupplierID=s.SupplierID)

--Zaw� wyniki do rekord�w, kt�rych dostawca jest z Hiszpanii lub UK.

SELECT s.CompanyName,s.ContactName, s.City, s.Country
FROM Suppliers AS S
JOIN Products AS P
ON (S.SupplierID=p.SupplierID)
WHERE Country IN ('Spain', 'UK')

--Po��cz tabel� zam�wie� z tabel� pracownik�w.Posortuj po ID pracownika

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
ORDER BY E.EmployeeID

--Zaw� wyniki wyszukiwania do zam�wie� obs�u�onych przez pracownika o numerze ID 2,4,5

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
WHERE O.EmployeeID IN (2,4,5)

/*Ogranicz wyniki do tych, kt�rych kolumna ShipName w swojej warto�ci zawiera "res".
Posortuj po numerze ID pracownika rosn�co.*/

SELECT *
FROM Orders AS O
JOIN Employees AS E
ON(O.EmployeeID=E.EmployeeID)
WHERE ShipName LIKE '%RES%'
ORDER BY e.EmployeeID 

--Po��cz tabel� Orders z Shippers.(UWAGA NA KLUCZE)

SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)

--Wyniki zaw� do zam�wie� z Francji i Finlandii

SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)
WHERE o.ShipCountry IN ('France', 'Finland')

--Wyniki zaw� do tych obs�ugiwanych przez pracownika nr 2 i posortuj po dacie zam�wienia od najnowszego do najstarszego


SELECT *
FROM Orders AS O
JOIN Shippers AS S
ON(O.ShipVia=S.ShipperID)
WHERE o.ShipCountry IN ('France', 'Finland')
AND O.EmployeeID=2
ORDER BY OrderDate


