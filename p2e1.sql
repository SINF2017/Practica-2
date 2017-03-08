-- Como root:
-- create database practica2;
-- grant all on practica2.* to sara,sara@localhost;

-- Clave primara: primary key

create table Actores (
	ID_actor integer AUTO_INCREMENT PRIMARY KEY,
	nombre char(20) not null
);
insert into Actores (nombre) values ('Juan Perez');
insert into Actores (nombre) values ('Jose Gonzalez');
insert into Actores (nombre) values ('Ana Diaz');
insert into Actores (nombre) values ('Pepa Salgado');
insert into Actores (nombre) values ('Marcial Fernandez');
insert into Actores (nombre) values ('Maria Santos');

create table Directores(
	ID_director integer AUTO_INCREMENT PRIMARY KEY,
	nombre char(20) not null
);
insert into Directores (nombre) values ('Jorge Puyol');
insert into Directores (nombre) values ('David Varela');
insert into Directores (nombre) values ('Sofia Rodriguez');
insert into Directores (nombre) values ('Rosa Goce');
insert into Directores (nombre) values ('Andrea Mandado');
insert into Directores (nombre) values ('Valentin Ramirez');

create table Peliculas(
	ID_pelicula integer AUTO_INCREMENT PRIMARY KEY,
	titulo char(20) not null
);
insert into Peliculas (titulo) values ('Tarzan');
insert into Peliculas (titulo) values ('El Libro de la Selva');
insert into Peliculas (titulo) values ('El Rey Leon');
insert into Peliculas (titulo) values ('Mulan');
insert into Peliculas (titulo) values ('Pocahontas');
insert into Peliculas (titulo) values ('Buscando a Nemo');

show tables;
desc Actores;
select * from Actores;
desc Directores;
select * from Directores;
desc Peliculas;
select * from Peliculas;

--create table Actores (
--	ID_actor integer AUTO_INCREMENT,
--	nombre char(20) not null,
--	primary key (ID_actor)
--);
--insert into Actores values (0,'Juan Perez');
--insert into Actores values (1,'Jose Gonzalez');
--insert into Actores values (2,'Ana Diaz');
--insert into Actores values (3,'Pepa Salgado');
--insert into Actores values (4,'Marcial Fernandez');
--insert into Actores values (5,'Maria Santos');

--create table Directores(
--	ID_director integer AUTO_INCREMENT,
--	nombre char(20) not null,
--	primary key (ID_director)
--);
--insert into Directores values (0,'Jorge Puyol');
--insert into Directores values (1,'David Varela');
--insert into Directores values (2,'Sofia Rodriguez');
--insert into Directores values (3,'Rosa Goce');
--insert into Directores values (4,'Andrea Mandado');
--insert into Directores values (5,'Valentin Ramirez');

--create table Peliculas(
--	ID_pelicula integer AUTO_INCREMENT,
--	titulo char(20) not null,
--	primary key (ID_pelicula)
--);
--insert into Peliculas values (0,'Tarzan');
--insert into Peliculas values (1,'El Libro de la Selva');
--insert into Peliculas values (2,'El Rey Leon');
--insert into Peliculas values (3,'Mulan');
--insert into Peliculas values (4,'Pocahontas');
--insert into Peliculas values (5,'Buscando a Nemo');