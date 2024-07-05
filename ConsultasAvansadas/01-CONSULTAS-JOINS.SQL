--juntar tablas ccategorias con producto 
Select * from Categories as c 
inner join Products AS p
on c.CategoryID=p.CategoryID;
 