-- SECCION #3 WHERE OPERADORES AND OR NOT

-- AND debe cumplir las dos condiciones

-- Filtramos los registros donde country sea algeria y country_id sea igual a 2
select * from country where country = 'Algeria' and country_id = 2;


-- OR cumple una condicion y muestra los resultados
select * from language where language_id = 1 or name = 'French';

select * from country where country = 'Algeria' or country_id = 7;


-- NOT Permite quitar un registro

select * from category where not  name = 'Travel';


select * from film where not rating = 'R';


-- Ejercicio #14

-- Filtramos los registros donde customer_id sea igual a 36, amount sea mayor a 0.99 y staff_id se igual a 1
select * from payment where customer_id = 36 and amount > 0.99 and staff_id = 1;


-- EJercicio #15
-- filtramos los registros donde staff_id no sea 1 , customer_id sea mayor a 250 y inventory_id sea menor a 100
select * from rental where not staff_id = 1 and customer_id > 250 and inventory_id < 100;
