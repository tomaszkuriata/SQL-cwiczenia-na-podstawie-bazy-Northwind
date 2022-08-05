-- IS NULL / IS NOT NULL

--Wy�wietl zam�wienia, kt�re nie posiadaj� danych w kolumnie Region.

SELECT *
FROM Orders
WHERE ShipRegion IS NULL

--Wy�wietl zam�wienia, kt�re posiadaj� dane w kolumnie Region.

SELECT *
FROM Orders
WHERE ShipRegion IS NOT NULL

--Wyswietl pracownik�w, kt�rzy nie posiadaj� prze�ozonego (kolumna ReportsTo).

SELECT *
FROM Employees
WHERE ReportsTo IS NULL

--Wy�wietl zam�wienia, kt�re nie zosta�y jeszcze wys�ane (nie posiadaj� daty wysy�ki).

SELECT *
FROM Orders
WHERE ShippedDate IS NULL

--Wy�wietl tylko te zam�wienia, kt�re zosta�y wys�ane.

SELECT *
FROM Orders
WHERE ShippedDate IS NOT NULL

--Wy�wietl w jednej kolumnie miasto i kod pocztowy dostawc�w (Suppliers), kt�rzy posiadaja numer FAX. Zamien nazwy na j�zyk polski.

SELECT (City+''+PostalCode) AS [Dane adresowe]
FROM Suppliers
WHERE Fax IS NOT NULL
