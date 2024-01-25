CREATE database holamundo;
show databases;
use holamundo;
create table animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    primary key (id)
);

-- insert into animales (tipo, estado) values ('perro', 'alegre');
-- esta linea no será ejecutada

alter table animales modify column id int auto_increment;

show create table animales;

-- CREATE TABLE `animales` (
--  `id` int NOT NULL AUTO_INCREMENT,
--  `tipo` varchar(255) DEFAULT NULL,
--  `estado` varchar(255) DEFAULT NULL,
--  PRIMARY KEY (`id`)
--  );
  
  insert into animales (tipo, estado) values ('perrito', 'alegre');
  insert into animales (tipo, estado) values ('gatito', 'curioso');
  insert into animales (tipo, estado) values ('gallinita', 'culeca');
  
  select * from animales;
  select * from animales where id = 1;
  select * from animales where tipo = 'perrito';
  select * from animales where estado = 'culeca';
  select * from animales where tipo = 'gatito' and estado = 'curioso';
  
  update animales set estado = 'feliz' where id = 6;
  
  -- DELETE FROM animales where estado = 'feliz';
  -- Error Code: 1175. You are using safe update mode and you tried to 
  -- update a table without a WHERE that uses a KEY column.  To disable safe mode, 
  -- toggle the option in Preferences -> SQL Editor and reconnect.

  -- UPDATE animales set estado = 'feliz' where tipo = 'perrito'
  -- esta consulta también devuelve el mismo error 1175
  
  DELETE FROM animales where id = 3;