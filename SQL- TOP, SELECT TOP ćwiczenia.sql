--TOP/ SELECT TOP

--Wy�wietl tylko 20 pierwszych rekord�w z tabeli Orders

SELECT TOP 20*
FROM Orders

--Wy�wietl produkty o cenie jedn.wi�kszej od 10. Posortuj je po nazwie produktu malej�co i ogranicz wyniki do pierwszych 10.

SELECT TOP 10*
FROM Products
WHERE UnitPrice>10
ORDER BY ProductName DESC

-- Wy�wietl 3 pracownik�w , kt�rzy maj� najd�uzszy sta�.

SELECT TOP 3*
FROM Employees
ORDER BY HireDate
