-- GROUP BY -> Permite agrupar informacion

use sakila;

-- Ejemplo -> Agrupa la informacion y con la funcion cuenta el numero de veces del apellido
select last_name, count(*) as Veces from actor group by last_name;

select c.customer_id, c.first_name, c.last_name,
sum(p.amount) as suma from payment p inner join customer c on (p.customer_id = c.customer_id) group by 1,2,3;

select * from customer c  inner join payment p on (c.customer_id = p.customer_id);

-- Ejercicio #48
-- Consulta la tabla rental de la base de datos sakila.
-- Realiza un MAX de  la columna rental_date

select * from rental;
select customer_id , max(rental_id) as Maximo from rental group by customer_id;