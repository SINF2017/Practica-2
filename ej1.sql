/*
Ejercicio 1:
Crea una nueva base de datos y un programa
SQL que contenga las sentencias necesarias
para crear las relaciones descritas en este apartado
e introducir algunos datos en cada una de
ellas (de 5 a 10 filas por relación serán suficientes)
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
  titulo VARCHAR(50),
  PRIMARY KEY (ID_pelicula)
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

INSERT INTO peliculas(ID_pelicula,titulo) VALUES
(0,'El Padrino'),
(1,'Cincuenta sombras de Grey'),
(2,'Cincuenta sombras mas oscuras'),
(3,'Origen'),
(4,'Matrix'),
(5,'Cadena perpetua'),
(6,'El caballero oscuro'),
(7,'Star Wars, El imperio contraataca'),
(8,'Star Wars, El despertar de la fuerza'),
(9,'El truco final'),
(10,'The Revenant');

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
