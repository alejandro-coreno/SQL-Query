-- JOINS -> Union de tablas

-- INNER JOIN -> Permite unir dos tablas cuando tienen algo en comun

-- LEFT JOIN -> Permite unir dos tablas, mantiene los datos de la tabla izquierda y se une con los datos de la derecha en el campo donde coincidan

-- RIGHT JOIN -> Mantiene los datos de la tabla derecha y los une con los datos de la izquierda, en el campo que coincidad

use sakila;

select * from film;

select * from language;

-- Ejemplo de INNER JOIN

-- Realizamos un Join para unir las dos tablas film y language 
-- donde el campo  language_id es igual en las dos tablas en film y language
-- ponemos un alias para identificar cada tabla 
select f.title, f.description, f.release_year, l.name from film f inner join language l on (f.language_id = l.language_id);


-- Ejemplo de INNER JOIN

select * from address;
select * from city;


-- Juntamos las dos tablas donde el campo city_id sea igual en las dos tablas
-- Mostramos la Direccion y la Ciudad de cada una de las tablas con el city_id iguales
select a.address as Dirreccion, c.city as Ciudad from address a inner join city c on (a.city_id = c.city_id);


-- EJEMPLO RIGHT JOIN
-- Unimos la tabla customer y actor por el campo last_name donde sea igual 

select * from customer;
select * from actor;


-- Mantiene la informacion de la tabla actor y 
-- muestra campos de la tabla customer, donde el last_name coincida en ambas tablas

select c.customer_id, c.first_name, c.last_name,
a.actor_id, a.first_name, a.last_name
from customer c right join actor a on (c.last_name = a.last_name);


-- EJEMPLO LEFT JOIN
-- Unir dos tablas y se mantiene la informacion de la tabla de la izquierda y muestra la informacion de
-- la tabla de la derecha cuando sea igual su last_name

select c.customer_id, c.first_name, c.last_name,
a.actor_id, a.first_name, a.last_name
from customer c left join actor a on (c.last_name = a.last_name);


-- Ejercicio práctico #36
-- Consulta la tabla address de la base de datos sakila.
-- Realiza un INNER JOIN con las tablas city y country
-- Mostrar las columnas address, city, country
select * from address;
select * from city;
select a.address, c.city, co.country from address a  inner join city c on (a.city_id = c.city_id ) 
inner join country co on (c.country_id = co.country_id);

select * from address a inner join city c on (a.city_id = c.city_id) inner join country co on (c.country_id = co.country_id);

-- Ejercicio practico #37
-- Consulta la tabla customer de la base de datos sakila.
-- Realiza un LEFT JOIN con las tablas store y address
-- Mostrar las columnas first_name, address, store_id

select * from customer;
select * from store;
select * from address;
select c.first_name, a.address, s.store_id from customer c left join store s on (c.store_id = s.store_id) left join  address a on(c.address_id = a.address_id);


-- Ejercicio #38
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un INNER JOIN con la tabla staff
-- Mostrar las columnas rental_id, first_name

-- Muestra la informacion de las dos tablas, donde se junten el campo staff_id 
select r.rental_id, s.first_name as Nombre from rental r inner join staff s on (r.staff_id = s.staff_id);
