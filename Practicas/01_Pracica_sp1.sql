use NORTHWND
go
---crear un sp que solicite un id de una categoria y devuelva el promedio de los precios de sus productos
CREATE O ALTER PROC sp_solicitar_promedio_prod

@catego int --parametro de entrada
as
begin
select AVG(UnitPrice) AS 'PROMDIO DE PRECIO DE LOS PRODUCTOS'
from Products
WHERE CategoryID = @catego;
end 
go

exec sp_solicitar_promedio_prod @catego = 5