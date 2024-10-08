-- UPDATE -> Permite actualizar los datos con la clausual where 

use sakila;

-- EJEMPLO #1

-- Actualizamos el campo city donde el country id sea igual a 87
update city set city = 'NEW YORK' where country_id = 87;

-- Mostramos las ciudades donde el campo city se igual a NEW YORK
select * from city where city = 'NEW YORK';


-- EJEMPLO #2
select * from actor where last_name = 'GUINESS';

-- Actualizamos el campo first_name a RAUL donde last_name se igual a guinness
update actor set first_name = 'RAUL' where last_name = 'GUINESS';


-- EJEMPLO #3

select * from staff;

-- actualizamos el id #2 del campo first_name por pablo
update staff set first_name = 'Pablo2' where staff_id = 2;


-- EJERCICIO #87

select * from actor;
insert into actor (first_name, last_name) values ('Josue Alejandro', 'Camacho');
update actor set first_name = 'Doe' where actor_id = 202;


-- EJERCICIO #88

select * from category;
insert into category (name) values ('Francisco');
update category set name = 'Pepe Doe' where category_id = 19;

-- EJERCICIO #89
select * from film_text;
update film_text set title = 'Hombre Araña' where film_id = 1;


