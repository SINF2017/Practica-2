/*
https://docs.jboss.org/hibernate/orm/3.5/reference/es-ES/html/associations.html
Cambiar valor del contenido de una columna:
update actores set id_pelicula = 2;
*/

use practica2;
drop table if exists pelicula_actor,actores,peliculas,directores;

create table Directores(
	ID_director integer,
	nombre char(20) not null,
	primary key (ID_director)
)engine = innodb;

create table Peliculas(
	ID_pelicula integer,
	titulo char(20) not null,
	ID_director integer,
	primary key (ID_pelicula),
	foreign key (ID_director) references Directores (ID_director) 
		on delete cascade on update cascade
)engine=innodb;

create table Actores (
	ID_actor integer PRIMARY KEY,
	nombre char(20) not null
)engine=innodb;

create table pelicula_actor(
	ID_pelicula integer not null,
	ID_actor integer not null,
	primary key (ID_pelicula,ID_actor),
	foreign key (ID_actor) references Actores (ID_actor)
		on delete cascade on update cascade,
	foreign key (ID_pelicula) references Peliculas (ID_pelicula)
		on delete cascade on update cascade
) engine=innodb;

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

insert into pelicula_actor values (0,1);
insert into pelicula_actor values (0,2);
insert into pelicula_actor values (0,3);
insert into pelicula_actor values (0,0);
insert into pelicula_actor values (6,1);
insert into pelicula_actor values (6,2);
insert into pelicula_actor values (3,3);
insert into pelicula_actor values (4,0);
insert into pelicula_actor values (5,1);