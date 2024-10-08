-- Like -> Se utiliza en la clausula where, para buscar un patron en especifico de una columna

use sakila;

-- Filtramos la informacion de la tabla actor donde el nombre empieze con la letra A, se utiliza like para seguir un patron
select * from actor where (first_name like 'A%') and (last_name like 'D%');

-- Filtramos todos los nombres que terminen con la letra A y apellido que termine con la letra N
select * from actor where (first_name like '%A') and last_name like '%N';


-- Filtra la informacion donde tenga NE en cualquier parte del campo fisrt_name
select * from actor where (first_name like '%NE%') and last_name like '%RO%';


-- Filtra los registro que empiecen con A y terminen con B
select * from actor where (first_name like 'C%N') and last_name like 'G%';


-- Ejercicio #30
-- Filtra la información donde release_year sea igual a 2006  y title empiece con ALI.
select * from film where release_year = 2006 and title like 'ALI%';

