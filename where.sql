-- SECCION #2 WHERE 

-- La clausula where permite filtrar informacion cuando una condicion se cumpla

use sakila;

-- filtramos todos los registros que su apellido sea igual a  'CAGE'
select * from actor where last_name = 'CAGE';

-- filtramos todas las ciudades que su country_id sea igual a 102
select * from city where country_id = 102;

-- filtramos todos los clientes que sea hayan registrado en la tienda uno
select * from customer where store_id = 1;

-- filtramos todos los registros que su film_id sea mayor o igual a 50 
select * from inventory where film_id >= 50;

-- filtramos todos los valores distintos al campo amount donde sean menor que 3
select distinct amount from payment where amount < 3;

-- filtramos de la tabla staf donde staff_id sea diferente a 1
select * from staff where staff_id <> 1;

-- filtramos de la tabla language el name sea diferente de japanese
select * from language where name <> 'French';

-- Ejercicio #9;
-- Mostramos los datos de descriptio y release_year de la tabla film
select description, release_year from film;

-- filtramos los registros de la tabla film donde title sea igual IMPACT ALADDIN
select * from film where title = 'IMPACT ALADDIN';

-- EJERCICIO # 10

-- filtramos los registros donde amount sea menor que 0.99 
select * from payment where amount < 0.99;


