-- IS NULL / IS NOT NULL

--Wyœwietl zamówienia, które nie posiadaj¹ danych w kolumnie Region.

SELECT *
FROM Orders
WHERE ShipRegion IS NULL

--Wyœwietl zamówienia, które posiadaj¹ dane w kolumnie Region.

SELECT *
FROM Orders
WHERE ShipRegion IS NOT NULL

--Wyswietl pracowników, którzy nie posiadaj¹ prze³ozonego (kolumna ReportsTo).

SELECT *
FROM Employees
WHERE ReportsTo IS NULL

--Wyœwietl zamówienia, które nie zosta³y jeszcze wys³ane (nie posiadaj¹ daty wysy³ki).

SELECT *
FROM Orders
WHERE ShippedDate IS NULL

--Wyœwietl tylko te zamówienia, które zosta³y wys³ane.

SELECT *
FROM Orders
WHERE ShippedDate IS NOT NULL

--Wyœwietl w jednej kolumnie miasto i kod pocztowy dostawców (Suppliers), którzy posiadaja numer FAX. Zamien nazwy na jêzyk polski.

SELECT (City+''+PostalCode) AS [Dane adresowe]
FROM Suppliers
WHERE Fax IS NOT NULL
