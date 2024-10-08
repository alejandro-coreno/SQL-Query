-- Funciones utiles Agregacion

use sakila;

-- char_length -> Funcion para conocer la longitud de una cadena de caracteres
select name, char_length(name) as LongitudCadena from category;
select description, char_length(description) as Description_Longitud from film;
select name, char_length(name) as longitudCadena from category;

-- concat -> Permite concatenar dos campos de la bd
select *, concat(first_name, " " , last_name) as "Nombre Completo" from customer;

-- concat_ws -> Permite concatenar campos y poder separarlos por medio de un caracter
select concat_ws(" | ", title, description ) as "Concatenador" from film;

-- round -> Permite redondear un campo que te tenga numeros de decimal
select *, round(amount, 0) as "Numero redondeado" from payment;

-- Upper -> Permite transformar un campo a mayusculas
select *, lower(last_name) as Minusculas from actor;

-- lower -> Permite transformar un campo a minusculas
select *, upper(special_features) as "Mayusculas" from film;


-- EJERCICIO #58
-- Usa la función CONCAT() en la tabla customer y has un concatenado entre first_name, last_name y email.
select *, concat(first_name, " " , last_name ," " , email ) as "Nombre y Correo " from customer;


-- EJERCICIO #59
-- Usa la función CONCAT_WS() en la tabla film y has un concatenado de todas las columnas.
select *, concat_ws("|" , film_id, title, description, release_year) as "Concatenacion" from film; 

-- EJERCICIO #60
-- Consulta la tabla payment y has un group by por customer_id para el promedio de amount, 
-- después usa la función ROUND() para redondear a cero decimales el promedio.
select * from payment;
select round(avg(amount), 0) as "Promedio" from payment group by customer_id;

-- EJERCICIO #61
-- Usa la función UCASE() en la tabla city y convierte la columna city en mayúsculas.
select *, ucase(city) as " City Mayusculas "from city;


-- select rental_duration, count(*) as "N veces" from film group by rental_duration;

