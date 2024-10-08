-- HAVING -> Se agrego para poder realizar funciones de agregacion,
-- Se ocupa cuando se necesita realizar una condicion en una funcion de agregacion

-- permite realizar condiciones en funciones de agregacion con la clausula having

-- Query cuenta el numero de veces que tiene cada apellido y muestra las que se repiten mayor a 1
select last_name, count(*) from actor group by 1 having count(*) > 1;

-- Query realiza un join 
select c.customer_id, c.last_name, c.first_name, sum(p.amount)
from payment p inner join customer c on ( p.customer_id = c.customer_id ) 
group by 1,2,3 having sum(p.amount) < 60 order by sum(p.amount) desc;


-- Ejercicio #51
-- Consulta la tabla actor de la base de datos sakila.
-- Realiza un COUNT de  last_name
-- Mostrar cuando el COUNT sea mayor de 2
select last_name, count(*) as Veces from actor group by last_name having count(*) > 3;
