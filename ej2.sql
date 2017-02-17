/*
Ejercicio 2:
Investiga el comportamiento y utilidad de una
clave foránea. Modifica el programa del ejercicio anterior para
incorporar la asociación entre directores y películas
*/
USE practica2;

CREATE TABLE actores(
  ID_actor INTEGER NOT NULL,
  nombre VARCHAR(100),
  PRIMARY KEY (ID_actor)
);


CREATE TABLE directores(
  ID_director INTEGER NOT NULL,
  nombre VARCHAR(100),
  PRIMARY KEY (ID_director)
);

CREATE TABLE peliculas(
  ID_pelicula INTEGER NOT NULL,
  ID_director INTEGER NOT NULL,
  titulo VARCHAR(50),
  PRIMARY KEY (ID_pelicula),
  FOREIGN KEY (ID_director) REFERENCES directores(ID_director)
);


INSERT INTO actores(ID_actor,nombre) VALUES
(0,'Keanu Reeves'),
(1,'Jamie Dornan'),
(2,'Dakota Johnson'),
(3,'Morgan Freeman'),
(4,'Leonardo DiCaprio'),
(5,'Marlon Brando'),
(6,'Al Pacino'),
(7,'Christian Bale'),
(8,'Harrison Ford'),
(9,'Mark Hamill'),
(10,'Carrie Fisher');

INSERT INTO directores(ID_director,nombre) VALUES
(0,'Francis Ford Coppola'),
(1,'Sam Taylor-Johnson'),
(2,'James Foley'),
(3,'Christopher Nolan'),
(4,'Lana Wachowski'),
(5,'Frank Darabont'),
(6,'Irvin Kershner'),
(7,'J.J. Abrams'),
(8,'Alejandro G. Iñárritu');

INSERT INTO peliculas(ID_pelicula,ID_director,titulo) VALUES
(0,0,'El Padrino'),
(1,1,'Cincuenta sombras de Grey'),
(2,2,'Cincuenta sombras mas oscuras'),
(3,3,'Origen'),
(4,4,'Matrix'),
(5,5,'Cadena perpetua'),
(6,3,'El caballero oscuro'),
(7,6,'Star Wars, El imperio contraataca'),
(8,7,'Star Wars, El despertar de la fuerza'),
(9,3,'El truco final'),
(10,8,'The Revenant');

SELECT * FROM directores;
SELECT * FROM peliculas;
