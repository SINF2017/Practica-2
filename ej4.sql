/*
Ejercicio 4:
Modifica el programa del ejercicio anterior,
añadiendo un nuevo atributo a cada una de las
relaciones de películas, actores y directores que
contenga el número de identificación de la pelí-
cula en IMDb2 (número que es único)
*/

USE practica2;

CREATE TABLE actores(
  ID_actor INTEGER NOT NULL,
  IMDB INTEGER,
  nombre VARCHAR(100),
  PRIMARY KEY (ID_actor)
);


CREATE TABLE directores(
  ID_director INTEGER NOT NULL,
  IMDB INTEGER,
  nombre VARCHAR(100),
  PRIMARY KEY (ID_director)
);

CREATE TABLE peliculas(
  ID_pelicula INTEGER NOT NULL,
  IMDB INTEGER,
  ID_director INTEGER NOT NULL,
  titulo VARCHAR(50),
  PRIMARY KEY (ID_pelicula),
  FOREIGN KEY (ID_director) REFERENCES directores(ID_director)
);

CREATE TABLE actorEnPelicula(
  ID_actor INTEGER NOT NULL,
  ID_pelicula INTEGER NOT NULL,
  FOREIGN KEY (ID_actor) REFERENCES actores(ID_actor),
  FOREIGN KEY (ID_pelicula) REFERENCES peliculas(ID_pelicula)
);


INSERT INTO actores(ID_actor,IMDB,nombre) VALUES
(0,0000206,'Keanu Reeves'),
(1,1946193,'Jamie Dornan'),
(2,0424848,'Dakota Johnson'),
(3,0000151,'Morgan Freeman'),
(4,0000138,'Leonardo DiCaprio'),
(5,0000008,'Marlon Brando'),
(6,0000199,'Al Pacino'),
(7,0000288,'Christian Bale'),
(8,0000148,'Harrison Ford'),
(9,0000434,'Mark Hamill'),
(10,0000402,'Carrie Fisher');

INSERT INTO directores(ID_director,IMDB,nombre) VALUES
(0,0000338,'Francis Ford Coppola'),
(1,0853374,'Sam Taylor-Johnson'),
(2,0001226,'James Foley'),
(3,0634240,'Christopher Nolan'),
(4,0905154,'Lana Wachowski'),
(5,0001104,'Frank Darabont'),
(6,0449984,'Irvin Kershner'),
(7,0009190,'J.J. Abrams'),
(8,0327944,'Alejandro G. Iñárritu');

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
