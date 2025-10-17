-- CRUD
-- C   create
-- R   read
-- U   update
-- D   delete 

CREATE TABLE `user` (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	edad int not NULL,
    email varchar (100) not null,
	PRIMARY KEY (id)
);

-- DROP TABLE IF EXISTS user;
-- este comando borra la tabla creada sin registros

insert into user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
insert into user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
insert into user (name, edad, email) values ('Nicolas', 36, 'nicolas@gmail.com');
insert into user (name, edad, email) values ('Bobby', 7, 'bobby@gmail.com');

-- update user set email = 'nico@gmail.com' where id = 3; este comando sirve para modificar una parte de un registro

select * from user;
select * from user limit 1; -- limita el numero de registros que debe devolver spl
select * from user where edad > 15; 
select * from user where edad >= 15;
select * from user where edad > 20 and email = 'nicolas@gmail.com';
select * from user where edad > 20 or email = 'layla@gmail.com';
select * from user where email != 'layla@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail';
select * from user where email like 'oscar%';

select * from user order by edad asc;
select * from user order by edad desc;

select max(edad) as mayor from user;
select min(edad) as menor from user;

select id, name from user;
select id, name as migos from user;
