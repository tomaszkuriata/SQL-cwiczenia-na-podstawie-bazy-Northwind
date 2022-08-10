--GROUP BY/HAVING

/*Wyœwietl iloœæ zamówieñ z³o¿onych przez poszczególnych klientów.Posortuj wyniki od najmniejszej do najwiêkszej
liczby zamówieñ. ZawêŸ wyniki do klientów dla których iloœæ zamówieñ jest wiêksza lub równa 20.*/

USE Northwind

SELECT COUNT(*) AS [Iloœæ], CustomerID
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*)>=20
ORDER BY Iloœæ

--Wyœwietl ile ró¿nych produktów dostarcza kazdy z dostawców oraz ID dostawcy. Posortuj malej¹co po iloœci produktów

SELECT COUNT(*) AS [ILE], SupplierID
FROM Products
GROUP BY SupplierID
ORDER BY ILE DESC

/*Wyœwietl EmployeeID oraz zliczon¹ iloœæ zamówieñ, które obs³u¿y³ dany prcownik ale tylko dla
Pracowników, których iloœæ zamówieñ przekracza 100.*/

SELECT EmployeeID, COUNT (*)
FROM Orders
GROUP BY EmployeeID
HAVING COUNT (*)>100

--Wyœwietl ID kategorii, œredni¹ cenê produktów tylko, gdy iloœc produktów w danej kategorii >10

SELECT CategoryID, AVG (UnitPrice)
FROM Products
GROUP BY CategoryID
HAVING COUNT (ProductName)>10

--Wyœwietl œredni¹ cenê dostawy(Freight) zamówieñ wdg.poszczególnych klientów

SELECT AVG (Freight), CustomerID
FROM Orders
GROUP BY CustomerID

--Wyœwietl d³ugoœæ najd³u¿szej nazwy klienta zamieszka³ego w danym kraju.

SELECT MAX (ContactName), Country
FROM Customers
GROUP BY Country