--TRIPLE JOIN

/*po��cz tabele: Region z Territories i EmployeeTerritories.
Wyniki zaw� do Region�w z opisem zaczynaj�cym sie na 'N' lub gdzie wystepuj� pracownicy z ID 1 i 5.
Posortuj po TerritoryID malej�co.*/

SELECT *
FROM Region AS R
JOIN Territories AS T 
ON (R.RegionID=T.RegionID)
JOIN EmployeeTerritories AS ET
ON( ET.TerritoryID=T.TerritoryID)
WHERE RegionDescription LIKE 'n%' OR EmployeeID IN (1,5)
ORDER BY t.TerritoryID DESC

/*Po��cz tabele:Territories z EmployeeTerritories i Employees.
Wyniki zaw� do do Kobiet zatrudnionych od 1993 r.
Posortuj po Nazwisku rosn�co i po Opisie Terytorium malej�co.*/

SELECT *
FROM Territories AS T
JOIN EmployeeTerritories AS ET
ON(T.TerritoryID=ET.TerritoryID)
JOIN Employees AS E
ON(ET.EmployeeID=E.EmployeeID)
WHERE (TitleOfCourtesy= 'Ms.' OR TitleOfCourtesy='Mrs.') AND HireDate> '1993-01-01'
ORDER BY LastName ASC, TerritoryDescription DESC

/*Po��cz tabele:
EmployeeTerritories z Employess i Orders.
Wyniki zaw� do Zam�wie� przypisanych do Szefa (ReportsTo), gdzie Kraj Dostawy 
jest w Europie i Data Dostawy jest znana.
Stw�rz kolumn� z aliasem "Wys�ane Szef" z Tytu��w(p�e� i stanowisko), Imi� i Nazwisko.
Stanowisko zapisz ma�ymi literami, a nazwisko du�ymi.
Posortuj po Dacie Dostawy malej�co.*/


