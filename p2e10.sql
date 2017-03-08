/*1) Listar todos los docentes*/
select * from docente;

/*2)Encontrar el nombre de todos los docentes del departamento de Ingeniería Telemática*/
select nombre from docente where nombre_dpto='Ingeniería Telemática';

/*3) Listar el nombre de todos los docentes del departamento de Ingeniería Telemática con
salario superior a 70000 euros.*/
select nombre from docente where nombre_dpto='Ingeniería Telemática' and salario > 70000;

/*4) Para todos los docentes listar su ID, nombre, salario, departamento, edificio de su departamento
y presupuesto de su departamento.*/
select ID,nombre,docente.nombre_dpto,salario, edificio, presupuesto from docente left join departamento
on docente.nombre_dpto= departamento.nombre_dpto;

select ID,nombre,docente.nombre_dpto,salario, edificio, presupuesto from docente,departamento where
docente.nombre_dpto= departamento.nombre_dpto;
/*5) Encontrar los nombres de las materias del departamento de Ingeniería Telemática que
tengan 3 créditos.*/
select nombre from materia where nombre_dpto='Ingeniería Telemática' and creditos = 3;

/*6) Encontrar todos los ID y nombres de materias que está cursando un alumno con ID determinado
(por ejemplo 12345)*/
select cursa.id_materia, nombre from cursa left join materia
on cursa.id_materia = materia.id_materia where cursa.ID = 12345;

/*7) Listar el nombre de todos los docentes y alumnos, ordenados alfabéticamente.*/
(select nombre from docente) union (select nombre from alumno_3ciclo) order by nombre asc;

/*8) Repetir la consulta anterior, pero mostrando el número total de créditos que está cursando
el alumno (no mostrar el valor almacenado en el atributo tot_creditos de la relación
alumno_3ciclo. Utilizar agregación sobre las materias cursadas por el alumno).*/
(select cursa.ID, sum(creditos) as creditos_cursados from cursa,materia 
where cursa.id_materia = materia.id_materia GROUP BY ID)
union
(select ID,0  from alumno_3ciclo where ID not in (select cursa.ID from cursa,materia 
where cursa.id_materia = materia.id_materia GROUP BY ID)) order by creditos_cursados desc;

SELECT alumno_3ciclo.nombre AS Alumno, sum(materia.creditos) AS Creditos_cursando
FROM alumno_3ciclo, materia, cursa
WHERE
alumno_3ciclo.ID = cursa.ID AND
materia.id_materia = cursa.id_materia
GROUP BY alumno_3ciclo.nombre
ORDER BY alumno_3ciclo.nombre;

	/*Creditos cursados por los alumnos:
	select cursa.ID, sum(creditos) from cursa,materia where cursa.id_materia = materia.id_materia GROUP BY ID;
	*/

/*9) Repetir la consulta anterior pero mostrando el número total de créditos que cursa cada uno 
de los alumnos de la base de datos, junto con el ID del alumno (no mostrar el nombre del
alumno ni datos sobre los alumnos que no cursen ninguna materia)*/
SELECT ID, SUM(creditos) FROM cursa,materia where cursa.id_materia = materia.id_materia GROUP BY ID;

/*10) Buscar los nombres de todos los alumnos que hayan cursado en algún momento alguna
asignatura impartida por el departamento de Ingeniería Telemática (no deberían aparecer
nombres duplicados)*/
select nombre from alumno_3ciclo where ID in (
select ID from cursa where id_materia in 
(select id_materia from materia where nombre_dpto = 'Ingeniería Telemática')
)group by nombre;

	/*Materias del departamento de telematica:
	select id_materia from materia where nombre_dpto = 'Ingeniería Telemática';

	ID de alumnos que cursaron alguna de estas asignaturas:
	select ID from cursa where id_materia in 
	(select id_materia from materia where nombre_dpto = 'Ingeniería Telemática')
	group by ID;
	*/

/*11) Mostrar los IDs de todos los docentes que nunca hayan impartido una materia (ni está
previsto que la impartan)*/
select ID from docente where ID NOT IN(select ID from imparte);

/*12) Repetir la consulta anterior mostrando los nombres de los docente, no sus IDs.*/
select nombre from docente where ID NOT IN(select ID from imparte);

/*13) Encontrar los grupos con mayor y menor número de alumnos matriculados en nuestra
universidad (sin tener en cuenta los grupos que no tienen ningún alumno).*/
(select id_materia,id_grupo, count(*) as alumnos_matriculados from cursa 
group by id_materia order by alumnos_matriculados desc limit 1)
union
(select id_materia,id_grupo, count(*) as alumnos_matriculados from cursa 
group by id_materia order by alumnos_matriculados asc limit 1);

/*14) Encontrar, para cada materia, todos los grupos que tengan el máximo número de alumnos
(junto con dicho número) utilizando una consulta anidada*/



/*15) Repetir la consulta anterior mostrando los resultados ordenados de mayor a menor número
de alumnos matriculados*/



/*16) Mostrar los diez grupos (y su materia correspondiente) con más alumnos matriculados de
nuestra universidad.*/


