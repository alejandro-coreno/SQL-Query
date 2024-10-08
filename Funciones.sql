-- FUNCIONES EN SQL

-- SUM -> Realiza la sumatoria de una campo
-- Se pueden realizar sumatorias con el simbolo de +
-- COUNT -> Cuenta el numero de registros de un campo 
-- AVG -> Realiza el promedio de un campo 
-- MAX -> Busca el numero mayor de un campo 
-- MIN -> Busca el numero menor de un campo

use sakila;

select * from payment;

-- Funcion SUM
select sum(amount) as Suma from payment;
select inventory_id + film_id + store_id as Suma  from inventory;

-- Funcion COUNT
select * from payment;
select count(*) as Contar from payment;

-- FUNCION AVG
select avg(amount) from payment;
select avg(rental_duration) as Promedio from film;

-- FUNCION MAX
select min(length) as N_Maximo from film;

-- FUNCION MIN
select max(length) as N_Minimo from film;

-- EJercicio #44
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un COUNT de  la columna rental_id
select count(rental_id) as Conteo from rental;


-- Ejercicio #45 
-- Consulta la tabla payment de la base de datos sakila.
-- Realiza un MAX de  la columna amount

select max(amount) as n_maximo from payment;



