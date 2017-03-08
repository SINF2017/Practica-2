/*
In "select * from table where = (subquery) "You can use = when the subquery returns only 1 value.
When subquery returns more than 1 value, you will have to use IN:
select * from table where id IN (multiple row query);
*/

/*1)Listar todos los actores */
select * from actores;

/*2)Encontrar los nombres de todos los actores de la película "Mulan" */
select nombre from actores where ID_actor IN
(select ID_actor from pelicula_actor where ID_pelicula IN 
(select ID_pelicula from Peliculas where titulo='Mulan'));

	/*Obtener el ID de la pelicula Mulan:
	select ID_pelicula from Peliculas where titulo='Mulan';

	Obtener actores que participan en la pelicula:
	select ID_actor from pelicula_actor where ID_pelicula = 
	(select ID_pelicula from Peliculas where titulo='Mulan');

	Obtener nombre de los actores que participan en la pelicula:
	select nombre from actores where ID_actor =
	(select ID_actor from pelicula_actor where ID_pelicula = 
	(select ID_pelicula from Peliculas where titulo='Mulan'));
	*/

/*3)Encontrar todos los actores de más de 50 años*/
select * from actores where edad>50;

/*4)Para todos las películas mostrar su identificador,
título, imdb y nombre del director.*/
select ID_pelicula, titulo, peliculas.imbd, nombre from Peliculas left join directores 
on peliculas.ID_director = directores.ID_director;

/*5)Mostrar cuántas películas ha dirigido cada director*/
SELECT ID_director, COUNT(*) FROM Peliculas GROUP BY ID_director;

/*6)Mostrar todos los actores que no han actuado en ninguna película*/
/*usar NOT IN en vez de EXCEPT*/
select * from actores where ID_actor NOT IN(select ID_actor from pelicula_actor);

/*7)Para un determinado actor, muestra todos los directores que le han dirigido*/
select * from Directores where ID_director IN (
select ID_director from Peliculas where ID_director IN 
(select ID_pelicula from pelicula_actor where ID_actor=0));

	/*
	Peliculas en las que actuo el actor de ID 0:
	select ID_pelicula from pelicula_actor where ID_actor=0;

	Directores de las peliculas en las que actuo el actor de ID 0:
	select ID_director from Peliculas where ID_director IN 
	(select ID_pelicula from pelicula_actor where ID_actor=0);

	Informacion de los directores que dirigieron al actor con ID 0:
	select * from Directores where ID_director IN (
	select ID_director from Peliculas where ID_director IN 
	(select ID_pelicula from pelicula_actor where ID_actor=0));
	*/