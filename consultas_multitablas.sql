-- Consultas Multitablas

use sakila;


-- Ejemplo -> Quien ha vendiddo mas del staff en agosto del 2005
select a.first_name, a.last_name, sum(p.amount) as 'Total'
from staff a inner join payment p on (a.staff_id = p.staff_id) and p.payment_date like '2005-08%'
group by a.first_name, a.last_name;


-- Haga una lista de cada pelicula y el numero de actores que figuran en esa pelicula utiliza la tabla film_actor 
-- y film
select b.title, count(actor_id) as "Contador de Peliculas"
from film_actor a inner join film b on (a.film_id = b.film_id) 
group by b.title;

-- ¿Cuantas copias de la pelicula Hunchback imposible existen en el sistema de inventario?
select title, count(title) as 'Copias Disponibles' from film inner join inventory on (film.film_id = inventory.film_id)
where title = 'Hunchback Impossible';



-- Anote el total pagado por cada cliente. Listar los clientes alfabeticamente por apellido
select first_name, last_name, sum(amount) as 'Total Pagado' 
from payment inner join customer on (payment.customer_id = customer.customer_id)
group by first_name, last_name order by last_name;