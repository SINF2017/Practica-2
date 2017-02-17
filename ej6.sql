/*
Ejercicio 6:
Modifica tu base de datos añadiendo un nuevo
atributo edad para los directores y actores.
Asóciale a este atributo una comprobación para
asegurar que sólo admita valores entre 0 y 120.
*/

USE practica2;

CREATE TABLE actores(
  ID_actor INTEGER NOT NULL,
  IMDB INTEGER,
  nombre VARCHAR(100) NOT NULL,
  edad INTEGER NOT NULL CHECK(edad > 0 AND edad < 120),
  PRIMARY KEY (ID_actor)
);


CREATE TABLE directores(
  ID_director INTEGER NOT NULL,
  IMDB INTEGER,
  nombre VARCHAR(100) NOT NULL,
  edad INTEGER NOT NULL CHECK(edad > 0 AND edad < 120),
  PRIMARY KEY (ID_director)
);

CREATE TABLE peliculas(
  ID_pelicula INTEGER NOT NULL,
  IMDB INTEGER,
  ID_director INTEGER NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID_pelicula),
  FOREIGN KEY (ID_director) REFERENCES directores(ID_director)
);

CREATE TABLE actorEnPelicula(
  ID_actor INTEGER NOT NULL,
  ID_pelicula INTEGER NOT NULL,
  FOREIGN KEY (ID_actor) REFERENCES actores(ID_actor),
  FOREIGN KEY (ID_pelicula) REFERENCES peliculas(ID_pelicula)
);


INSERT INTO actores(ID_actor,IMDB,nombre,edad) VALUES
(0,0000206,'Keanu Reeves',52),
(1,1946193,'Jamie Dornan',34),
(2,0424848,'Dakota Johnson',27),
(3,0000151,'Morgan Freeman',79),
(4,0000138,'Leonardo DiCaprio',42),
(5,0000008,'Marlon Brando',93),
(6,0000199,'Al Pacino',76),
(7,0000288,'Christian Bale',43),
(8,0000148,'Harrison Ford',74),
(9,0000434,'Mark Hamill',65),
(10,0000402,'Carrie Fisher',61),
(11,0000115,'Nicolas Cage',53);

INSERT INTO directores(ID_director,IMDB,nombre,edad) VALUES
(0,0000338,'Francis Ford Coppola',77),
(1,0853374,'Sam Taylor-Johnson',49),
(2,0001226,'James Foley',63),
(3,0634240,'Christopher Nolan',46),
(4,0905154,'Lana Wachowski',52),
(5,0001104,'Frank Darabont',58),
(6,0449984,'Irvin Kershner',94),
(7,0009190,'J.J. Abrams',50),
(8,0327944,'Alejandro G. Iñárritu',53);

INSERT INTO peliculas(ID_pelicula,IMDB,ID_director,titulo) VALUES
(0,0068646,0,'El Padrino'),
(1,2322441,1,'Cincuenta sombras de Grey'),
(2,4465564,2,'Cincuenta sombras mas oscuras'),
(3,1375666,3,'Origen'),
(4,0133093,4,'Matrix'),
(5,0111161,5,'Cadena perpetua'),
(6,0468569,3,'El caballero oscuro'),
(7,0080684,6,'Star Wars, El imperio contraataca'),
(8,2488496,7,'Star Wars, El despertar de la fuerza'),
(9,0482571,3,'El truco final'),
(10,1663202,8,'The Revenant');

INSERT INTO actorEnPelicula(ID_actor,ID_pelicula) VALUES
(0,4),
(1,1),
(1,2),
(2,1),
(2,2),
(3,5),
(4,3),
(4,10),
(5,0),
(6,0),
(7,6),
(7,9),
(8,6),
(8,7),
(9,6),
(9,7),
(10,6),
(10,7);

SELECT * FROM actores;
SELECT * FROM directores;
SELECT * FROM peliculas;
