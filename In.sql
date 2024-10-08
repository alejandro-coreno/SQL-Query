-- SECCION #4 IN
-- IN Funcion para realizar multiples OR
use sakila;

-- Sin ocupar IN
select * from customer where first_name = 'MARY' OR first_name = 'PATRICIA';

-- CON IN -> Filtra los registros donde first_name sea igual a patricia o mary
select * from customer where first_name in ('MARY', 'PATRICIA');


-- IN -> 
-- Filtramos los registros de special_features sea ('Trailers', 'Trailers,Deleted Scenes') y el rating sea IN ('G', 'PG-13') y length sea mayor a 100
select * from film where special_features IN('Trailers', 'Trailers,Deleted Scenes') AND rating IN ('G', 'PG-13') AND length > 100;


-- IN con Not 
-- Filtramos los registros donde no muestre los nombres de action , children y drama

select * from category where not name in('Action', 'Drama', 'Children');


-- Ejercicio #19

-- Filtramos los registros de la tabla donde title sea ZORRO ARK or VIRGIN DAISY or UNITED PILOT
select * from film_text where title in ('ZORRO ARK', 'VIRGIN DAISY', 'UNITED PILOT');

-- Ejercicio #20;
-- Filtramos con el in donde la tabla city el campo city sea alguno de estos
select * from city where city in ('Chiayi', 'Dongying', 'Fukuyama', 'Kilis');

