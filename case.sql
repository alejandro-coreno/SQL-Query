-- CASE -> Permite segementar mas la informacion de la base de datos, y validar campos ;

select * from address;

-- Ejemplo #1
select address, address2, 
case 
	when address2 is null then "Sin dirreccion 2"
    else "Con dirreccion"
    end as Comentario 
from address;

-- Ejemplo #2
select * from payment;

select payment_id, amount, 
case 
	when amount < 1 then "Precio Minimo"
    when amount between 1 and 3 then "Precio Intermedio"
    else "Precio Maximo"
end as Comentario
from payment;

-- EJERCICIO #63
-- Usa la función CASE en la tabla film y calcula 3 casos, si rental_rate es menor que
-- 1 ingresa "Pelicula Mala", si la calificacion esta dentro de 1 y 3 que muestre "Pelicula Buena", 
-- si es mayor que muestre "Pelicula Excelente"
select * from film;

select film_id, rental_rate, 
case 
	when rental_rate < 1 then "Pelicula Mala"
    when rental_rate between 1 and 3 then "Pelicula Buena"
    else "Pelicula Excelente"
end as Calificacion_Peli
from film;