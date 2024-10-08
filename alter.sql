-- ALTER TABLE -> PERMITE ALTERAR O MODIFICAR LOS CAMPOS DE UNA TABLA

select * from actor;

-- Modificamos la tabla agregando una nueva columna o campo
alter table actor add column genero_id char(1);

-- Eliminamos la columna genero con el drop column
alter table actor drop column genero_id;

-- EJEMPLO #1

-- actualizamos el id #1 con el genero_id en M
select * from actor;

update actor set genero_id = 'M' where actor_id = 1;

update actor set genero_id = 'M' where actor_id = 2;

update actor set genero_id = 'F' where actor_id = 3;  
