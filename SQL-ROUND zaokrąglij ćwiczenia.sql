--ROUND zaokr¹glenie

--Wyœwietl nazwê produktu, jego cene jednostkow¹ oraz cenê jednostkow¹ zaokr¹glon¹ do 1 miejsca po przecinku

SELECT ProductName, UnitPrice, ROUND (UnitPrice,1)
FROM Products

--Wyœwietl nazwê produktu, jego cenê jednostkow¹ oraz cenê jednostkow¹ zaokr¹glon¹ do ca³oœci

SELECT ProductName, UnitPrice, ROUND(UnitPrice,0)
FROM Products

--Wyœwietl œredni¹ cenê produktów z kat.1.Nastêpnie zaokr¹glij t¹ cenê do jednego miejsca po przecinku.

SELECT ROUND (AVG (UnitPrice),1) 
FROM Products
WHERE CategoryID=1