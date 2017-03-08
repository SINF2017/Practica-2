/*IMDb:
--Tarzan: 0120855
--El Libro de la Selva: 0061852
--El Rey Leon: 0110357
--Mulan: 0120762
--Pocahontas: 0114148
--Buscando a Nemo: 0266543
--La Bella y la Bestia: 0101414
*/

/*Clave candidata: unique*/

use practica2;
drop table if exists pelicula_actor,actores,peliculas,directores;

create table Directores(
	ID_director integer,
	nombre char(20) not null,
	imbd integer unique, /*ALTER TABLE Directores ADD COLUMN imdb integer unique;*/
	primary key (ID_director)
)engine = innodb;

create table Peliculas(
	ID_pelicula integer,
	titulo char(20) not null,
	ID_director integer not null,
	imbd integer unique, /*ALTER TABLE Peliculas ADD COLUMN imdb integer unique;*/
	primary key (ID_pelicula),
	foreign key (ID_director) references Directores (ID_director) 
		on delete cascade on update cascade
)engine=innodb;

create table Actores (
	ID_actor integer PRIMARY KEY,
	imbd integer unique, /*ALTER TABLE Actores ADD COLUMN imdb integer unique;*/
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

insert into Actores values (0,'Juan Perez',78542);
insert into Actores values (1,'Jose Gonzalez',8745);
insert into Actores values (2,'Ana Diaz',794613);
insert into Actores values (3,'Pepa Salgado',1364);
insert into Actores values (4,'Marcial Fernandez',0225);
insert into Actores values (5,'Maria Santos',159852);

insert into Directores values (0,'Jorge Puyol',545212514);
insert into Directores values (1,'David Varela',785285);
insert into Directores values (2,'Sofia Rodriguez',78854);
insert into Directores values (3,'Rosa Goce',79542);
insert into Directores values (4,'Andrea Mandado',645325);
insert into Directores values (5,'Valentin Ramirez',7985452);

insert into Peliculas values (0,'Tarzan',4,0120855);
insert into Peliculas values (1,'El Libro de la Selva',1,0061852);
insert into Peliculas values (2,'El Rey Leon',2,0110357);
insert into Peliculas values (3,'Mulan',0,0120762);
insert into Peliculas values (4,'Pocahontas',5,0114148);
insert into Peliculas values (5,'Buscando a Nemo',3,0266543);
insert into Peliculas values (6,'La Bella y la Bestia',3,0101414);

/*
insert into Peliculas values (0,'Tarzan',4);
insert into Peliculas values (1,'El Libro de la Selva',1);
insert into Peliculas values (2,'El Rey Leon',2);
insert into Peliculas values (3,'Mulan',0);
insert into Peliculas values (4,'Pocahontas',5);
insert into Peliculas values (5,'Buscando a Nemo',3);
insert into Peliculas values (6,'La Bella y la Bestia',3);

update peliculas set imdb = 0120855 where titulo='Tarzan';
update peliculas set imdb = 0061852 where titulo='El Libro de la Selva';
update peliculas set imdb = 0110357 where titulo='El Rey Leon';
update peliculas set imdb = 0120762 where titulo='Mulan';
update peliculas set imdb = 0114148 where titulo='Pocahontas';
update peliculas set imdb = 0266543 where titulo='Buscando a Nemo';
update peliculas set imdb = 0101414 where titulo='La Bella y la Bestia';
*/

insert into pelicula_actor values (0,1);
insert into pelicula_actor values (0,2);
insert into pelicula_actor values (0,3);
insert into pelicula_actor values (0,0);
insert into pelicula_actor values (6,1);
insert into pelicula_actor values (6,2);
insert into pelicula_actor values (3,3);
insert into pelicula_actor values (4,0);
insert into pelicula_actor values (5,1);