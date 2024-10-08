-- INSERT INTO -> Permite agregar informacion a la tabla
select * from city;

-- Agregamos un nuevo registro a la tabla city
insert into city (city, country_id) values ('CDMX', '100');

-- Agregamos un nuevo registro a la tabla actor
select * from actor;
insert into actor (first_name, last_name ) values ('Alejandro', 'Coreño');

-- Agregamos un nuevo registro a la tabla category
select * from category;
insert into category (name) values ('Drama');

-- Ejercicio #79
-- Usa la función INSER INTO y agrega un registro a la tabla actor.
select * from actor;
insert into actor(firts_name, last_name) values ('Alejandro', 'Coreño');

-- Ejericio #80
-- Usa la función INSER INTO y agrega un registro a la tabla address.
select * from address;
describe address;
insert into address (address, postal_code, phone) values('Calle26', '1408' , '5542292075');

-- Ejercicio #81;
-- Usa la función INSER INTO y agrega un registro a la tabla category.
select * from category;
insert into category (name) values('Josue Alejandro');

-- Ejercicio #82
-- Usa la función INSER INTO y agrega un registro a la tabla customer.
select * from customer;
describe customer;
insert into customer (first_name, last_name, email) values ('Alejandro', 'Coreño', 'correo@correo.com');

-- Ejercicio #83
select * from film_text;
describe film_text;
insert into film_text (title, description) values ('Hombre Araña', 'loeremlonrweme');
