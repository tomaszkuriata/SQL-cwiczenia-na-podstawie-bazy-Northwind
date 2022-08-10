--GROUP BY/HAVING

/*Wy�wietl ilo�� zam�wie� z�o�onych przez poszczeg�lnych klient�w.Posortuj wyniki od najmniejszej do najwi�kszej
liczby zam�wie�. Zaw� wyniki do klient�w dla kt�rych ilo�� zam�wie� jest wi�ksza lub r�wna 20.*/

USE Northwind

SELECT COUNT(*) AS [Ilo��], CustomerID
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*)>=20
ORDER BY Ilo��

--Wy�wietl ile r�nych produkt�w dostarcza kazdy z dostawc�w oraz ID dostawcy. Posortuj malej�co po ilo�ci produkt�w

SELECT COUNT(*) AS [ILE], SupplierID
FROM Products
GROUP BY SupplierID
ORDER BY ILE DESC

/*Wy�wietl EmployeeID oraz zliczon� ilo�� zam�wie�, kt�re obs�u�y� dany prcownik ale tylko dla
Pracownik�w, kt�rych ilo�� zam�wie� przekracza 100.*/

SELECT EmployeeID, COUNT (*)
FROM Orders
GROUP BY EmployeeID
HAVING COUNT (*)>100

--Wy�wietl ID kategorii, �redni� cen� produkt�w tylko, gdy ilo�c produkt�w w danej kategorii >10

SELECT CategoryID, AVG (UnitPrice)
FROM Products
GROUP BY CategoryID
HAVING COUNT (ProductName)>10

--Wy�wietl �redni� cen� dostawy(Freight) zam�wie� wdg.poszczeg�lnych klient�w

SELECT AVG (Freight), CustomerID
FROM Orders
GROUP BY CustomerID

--Wy�wietl d�ugo�� najd�u�szej nazwy klienta zamieszka�ego w danym kraju.

SELECT MAX (ContactName), Country
FROM Customers
GROUP BY Country