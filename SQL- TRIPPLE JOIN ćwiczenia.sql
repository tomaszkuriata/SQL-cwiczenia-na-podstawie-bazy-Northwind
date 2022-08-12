--TRIPLE JOIN

/*po³¹cz tabele: Region z Territories i EmployeeTerritories.
Wyniki zawêŸ do Regionów z opisem zaczynaj¹cym sie na 'N' lub gdzie wystepuj¹ pracownicy z ID 1 i 5.
Posortuj po TerritoryID malej¹co.*/

SELECT *
FROM Region AS R
JOIN Territories AS T 
ON (R.RegionID=T.RegionID)
JOIN EmployeeTerritories AS ET
ON( ET.TerritoryID=T.TerritoryID)
WHERE RegionDescription LIKE 'n%' OR EmployeeID IN (1,5)
ORDER BY t.TerritoryID DESC

/*Po³¹cz tabele:Territories z EmployeeTerritories i Employees.
Wyniki zawêŸ do do Kobiet zatrudnionych od 1993 r.
Posortuj po Nazwisku rosn¹co i po Opisie Terytorium malej¹co.*/

SELECT *
FROM Territories AS T
JOIN EmployeeTerritories AS ET
ON(T.TerritoryID=ET.TerritoryID)
JOIN Employees AS E
ON(ET.EmployeeID=E.EmployeeID)
WHERE (TitleOfCourtesy= 'Ms.' OR TitleOfCourtesy='Mrs.') AND HireDate> '1993-01-01'
ORDER BY LastName ASC, TerritoryDescription DESC

/*Po³¹cz tabele:
EmployeeTerritories z Employess i Orders.
Wyniki zawêŸ do Zamówieñ przypisanych do Szefa (ReportsTo), gdzie Kraj Dostawy 
jest w Europie i Data Dostawy jest znana.
Stwórz kolumnê z aliasem "Wys³ane Szef" z Tytu³ów(p³eæ i stanowisko), Imiê i Nazwisko.
Stanowisko zapisz ma³ymi literami, a nazwisko du¿ymi.
Posortuj po Dacie Dostawy malej¹co.*/


