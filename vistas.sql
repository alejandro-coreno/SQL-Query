-- Views -> *Vistas en sql

-- Son tablas virtuales 


create view ingresos_por_genero as 
select name, sum(amount) from category
inner join film_category


