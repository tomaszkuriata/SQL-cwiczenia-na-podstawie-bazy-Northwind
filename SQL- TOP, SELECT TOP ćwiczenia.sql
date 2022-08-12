--TOP/ SELECT TOP

--Wyœwietl tylko 20 pierwszych rekordów z tabeli Orders

SELECT TOP 20*
FROM Orders

--Wyœwietl produkty o cenie jedn.wiêkszej od 10. Posortuj je po nazwie produktu malej¹co i ogranicz wyniki do pierwszych 10.

SELECT TOP 10*
FROM Products
WHERE UnitPrice>10
ORDER BY ProductName DESC

-- Wyœwietl 3 pracowników , którzy maj¹ najd³uzszy sta¿.

SELECT TOP 3*
FROM Employees
ORDER BY HireDate
