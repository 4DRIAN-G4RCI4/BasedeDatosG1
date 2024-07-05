--Funciones de agregado y agrupacion 
--utilizar base de datosu
use NORTHWND;

---SELECCIONAR EL NUMERO TOTAAL DE ORDENES DE COMPRA 
--Count(*)

select count(*) as 'NUMERO DE ORDENES' from orders;
--seleccionar el maximo de numero de recursos pedidos

select min(Quantity) as 'cantidad'
from [Order Details];


--seleccionar el total de las cantidades de los producgtos pedidos
select sum(unitprice) from [Order Details];


--seleccionar el promedio de las ventas del producto 3 
select avg(Quantity*od.unitprice) as total
from [Order Details] as od
INNER JOIN  products as p 
on od.productid = p.productid
where p.productName = 'Aniseed Syrup';


---seleccionar el numero de productos por categoria 


select categoryid
from products

select count(*)
from products

select categoryid, count(*) as 'total de productos'
from products
group by categoryid;



--seleccionar el numero de productos por el nombre de la categoria
select c.categoryname, count(productid) as 'total de productos'
from categories as c 
inner join products as p 
on c.categoryid = p.categoryid
group by c.categoryname;







