-- Ejercicios complentarios

-- ¿Qué actores tienen el primer nombre 'Scarlett'?
select * from actor where first_name = 'SCARLETT';

-- ¿Qué actores tienen el apellido "Johansson"?
select * from actor where last_name = 'JOHANSSON';

-- ¿Cuántos apellidos de actores distintos hay?
select count(distinct(first_name)) as 'Actores' from actor;

-- ¿Qué apellidos no se repiten?
select last_name from actor group by last_name having count(*) = 1;