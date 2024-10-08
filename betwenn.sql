-- BETWEEN -> Se utiliza para seleccionar valores de un rango dado pueden ser valores numericos o de texto

use sakila;

-- Mostramos los valores de la tabla rental donde el campo customer_id este dentro 300 y 350 y el staff_id sea 1
select * from rental where (customer_id between 300 and 350) and staff_id = 1;


-- filtramos informacion de la tabla payment donde el campo amount tenga un rango de 1 a 3 np esten
select * from payment where amount not between 2 and 5.99;


-- Ejercicio #23
-- Filtra la información donde amount esté entre 2.99 y 4.99,  staff_id sea igual a 2 y customer_id sea 1 y 2.
select * from payment where (amount between 2.99 and 4.99) and staff_id = 2 and customer_id in (1, 2);

-- Ejercicio #24
-- Filtra la información donde city_id esté entre 300 y 350,
select * from address where city_id between 300 and 350;

-- Ejercicio #25
-- Filtra la información donde rental_rate esté entre 0.99 y 2.99, length sea menor igual de 50  y replacement_cost sea menor de 20.
select * from film where (rental_rate between 0.99 and 2.99) and length <= 50 and replacement_cost < 20;

