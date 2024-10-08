-- SubConsultas

-- Permite realizar una consulta dentro de una

-- Ejemplo #1
select title from film where title like "k%" or title like "q%"and title in 
(
	select title from film where language_id in 
    
    (
		select language_id from language where name = 'English'
    )
);

-- Ejemplo #2
select first_name, last_name from actor where actor_id in 
(
	select actor_id from film_actor where film_id in 
    
    (
		select film_id from film where title = "Alone Trip"
    )
);

-- Ejemplo #3
select * from film_category;
select title from film where film_id in 
(
	select film_id from film_category where category_id in 
    (
		select category_id from category where name = 'Family'
    )
);