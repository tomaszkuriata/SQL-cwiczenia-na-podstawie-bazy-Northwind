--ROUND zaokr�glenie

--Wy�wietl nazw� produktu, jego cene jednostkow� oraz cen� jednostkow� zaokr�glon� do 1 miejsca po przecinku

SELECT ProductName, UnitPrice, ROUND (UnitPrice,1)
FROM Products

--Wy�wietl nazw� produktu, jego cen� jednostkow� oraz cen� jednostkow� zaokr�glon� do ca�o�ci

SELECT ProductName, UnitPrice, ROUND(UnitPrice,0)
FROM Products

--Wy�wietl �redni� cen� produkt�w z kat.1.Nast�pnie zaokr�glij t� cen� do jednego miejsca po przecinku.

SELECT ROUND (AVG (UnitPrice),1) 
FROM Products
WHERE CategoryID=1