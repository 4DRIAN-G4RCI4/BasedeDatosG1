--EJERCICIOS 
USE NORTHWND;

-- Ejercicio 1: Obtener el nombre del cliente y el nombre del empleado 
-- del representante de ventas de cada pedido.
SELECT * FROM 
--Ejercicio 2: Mostrar el nombre del producto, el nombre del proveedor y el precio unitario de cada producto.
--Ejercicio 3: Listar el nombre del cliente, el ID del pedido y la fecha del pedido para cada pedido.
--Ejercicio 4: Obtener el nombre del empleado, el título del cargo y el departamento del empleado para cada empleado.
--Ejercicio 5: Mostrar el nombre del proveedor, el nombre del contacto y el teléfono del contacto para cada proveedor.
--Ejercicio 6: Listar el nombre del producto, la categoría del producto y el nombre del proveedor para cada producto.
--Ejercicio 7: Obtener el nombre del cliente, el ID del pedido, el nombre del producto y la cantidad del producto para cada detalle del pedido.
--Ejercicio 8: Obtener el nombre del empleado, el nombre del territorio y la región del territorio para cada empleado que tiene asignado un territorio.
--Ejercicio 9: Mostrar el nombre del cliente, el nombre del transportista y el nombre del país del transportista para cada pedido enviado por un transportista.
--Ejercicio 10: Obtener el nombre del producto, el nombre de la categoría y la descripción de la categoría para cada producto que pertenece a una categoría.                                                                                                                                                                                                      '
--ejercicio 11 seleccionar el total de ordenes hechas por cada uno de los proovedores

--ejercicio 12 Seleccionar el total de dinero que eh vendido por proveedor del primer trimestre de 1996
  select s.CompanyName as 'Proveedor', sum(od.UnitPrice * od.Quantity) as 'total ventas $'
  from Suppliers as s 
  INNER JOIN products as p 
  on s.SupplierID = p.SupplierID
  inner join [order Details] as o 
  on o.OrderID = od.OrderId
  where o.OrderDate BETWEEN'1996-09-01' and '1996-12-31'
  group by s.CompanyName
  order by 'Total ventas $' DESC
--ejercicio 13 seleccionar el total de dinero vendido por categoria
--ejercicio 14 seleccionar el total de dinero vendido por categoria y dentro por producto
