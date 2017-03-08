-- http://mysql.conclase.net/curso/?cap=007a
--http://www.mysqltutorial.org/mysql-foreign-key/
--https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html

-- Borrar tablas del ejercicio anterior:
-- drop table Actores,Directores,Peliculas;
-- show tables;

-- Programa SQL:
-- Clave foranea: engine InnoDB, foreign key
use practica2;
drop table if exists actores,peliculas,directores;

create table Actores (
	ID_actor integer PRIMARY KEY,
	nombre char(20) not null
);

create table Directores(
	ID_director integer PRIMARY KEY,
	nombre char(20) not null
)engine = innodb;

create table Peliculas(
	ID_pelicula integer PRIMARY KEY,
	titulo char(20) not null,
	ID_director integer not null,
	foreign key (ID_director) references Directores (ID_director) 
		on delete cascade on update cascade
)engine = innodb;

insert into Actores values (0,'Juan Perez');
insert into Actores values (1,'Jose Gonzalez');
insert into Actores values (2,'Ana Diaz');
insert into Actores values (3,'Pepa Salgado');
insert into Actores values (4,'Marcial Fernandez');
insert into Actores values (5,'Maria Santos');

insert into Directores values (0,'Jorge Puyol');
insert into Directores values (1,'David Varela');
insert into Directores values (2,'Sofia Rodriguez');
insert into Directores values (3,'Rosa Goce');
insert into Directores values (4,'Andrea Mandado');
insert into Directores values (5,'Valentin Ramirez');

insert into Peliculas values (0,'Tarzan',4);
insert into Peliculas values (1,'El Libro de la Selva',1);
insert into Peliculas values (2,'El Rey Leon',2);
insert into Peliculas values (3,'Mulan',0);
insert into Peliculas values (4,'Pocahontas',5);
insert into Peliculas values (5,'Buscando a Nemo',3);
insert into Peliculas values (6,'La Bella y la Bestia',3);

desc peliculas;
select * from directores;
select * from peliculas;