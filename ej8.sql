/**
Ejercicio 8:
Realiza las siguientes consultas sobre tu base de
datos de películas, directores y actores:
*/

USE practica2;

/**
  1. Listar todos los actores.
*/
SELECT nombre FROM actores;

/**
  2. Encontrar los nombres de todos los actores de la
  pelicula Star Wars, El imperio contraataca.
*/

SELECT actores.nombre,peliculas.titulo FROM actores,actorEnPelicula,peliculas
WHERE
peliculas.titulo = 'Star Wars, El imperio contraataca' AND
peliculas.ID_pelicula = actorEnPelicula.ID_pelicula AND
actorEnPelicula.ID_actor = actores.ID_actor;

/**
  3. Encontrar todos los actores de mas de 50 años.
*/

SELECT actores.nombre, actores.edad FROM actores
WHERE actores.edad > 50;

/**
  4. Para todos las peliculas mostrar su identificador, titulo,imdb,
  y nombre de director.
*/

SELECT peliculas.ID_pelicula,peliculas.titulo,peliculas.IMDB,directores.nombre
FROM peliculas,directores
WHERE peliculas.ID_director = directores.ID_director;

/**
  5. Mostrar cuantas peliculas ha dirigido cada director.
*/
SELECT directores.nombre AS Director , count(peliculas.ID_pelicula) AS Numero_de_peliculas_producidas
FROM directores,peliculas
WHERE directores.ID_director = peliculas.ID_director
GROUP BY directores.nombre;

/**
  6. Mostrar todos los actores que no han actuado en ninguna pelicula
*/
SELECT actores.nombre AS Actores_que_no_han_actuado_en_ninguna_pelicula
FROM actores
WHERE actores.ID_actor NOT IN (SELECT actorEnPelicula.ID_actor FROM actorEnPelicula)
GROUP BY actores.nombre;

/**
  7. Para un determinado actor, mostrar todos los directores que le han dirigido
*/
SELECT directores.nombre AS Directores_de_Jamie_Dornan
FROM actores,directores,actorEnPelicula,peliculas
WHERE
actores.nombre = 'Jamie Dornan' AND
actorEnPelicula.ID_actor = actores.ID_actor AND
peliculas.ID_pelicula = actorEnPelicula.ID_pelicula AND
directores.ID_director = peliculas.ID_director;
