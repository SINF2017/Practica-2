USE UnivPeque;

/**
Ejercicio 1: Listar todos los docentes.
*/
SELECT *
FROM docente;

/**
Ejercicio 2: Encontrar el nombre de todos los docentes del departeamento de
Ingeniería Telemática.
*/
SELECT docente.nombre
FROM docente
WHERE docente.nombre_dpto = 'Ingeniería Telemática';

/**
Ejercicio 3: Listar el nombre de todos los docentes del
departamento de Ingeniería Telemática con
salario superior a 70000 euros.
*/
SELECT nombre
FROM docente
WHERE nombre_dpto = 'Ingeniería Telemática' AND salario > 70000;

/**
Ejercicio 4: Para todos los docentes listar su ID, nombre,
salario, departamento, edificio de su departamento
y presupuesto de su departamento.
*/
SELECT ID,nombre,docente.nombre_dpto,salario,edificio,presupuesto
FROM docente,departamento
WHERE departamento.nombre_dpto = docente.nombre_dpto;

/**
Ejercicio 5: Encontrar los nombres de las materias del
departamento de Ingeniería Telemática que
tengan 3 créditos.
*/
SELECT materia.nombre
FROM materia
WHERE nombre_dpto = 'Ingeniería Telemática' AND creditos = 3;

/**
Ejercicio 6: Encontrar todos los ID y nombres de materias
que está cursando un alumno con ID determinado
(por ejemplo 12345)
*/
SELECT materia.id_materia,materia.nombre
FROM materia,cursa
WHERE cursa.ID = 12345 AND materia.id_materia = cursa.id_materia;

/**
Ejercicio 7: Listar el nombre de todos los docentes y
alumnos, ordenador alfabéticamente.
*/
(SELECT docente.nombre FROM docente)
union
(SELECT alumno_3ciclo.nombre FROM alumno_3ciclo)
ORDER BY nombre;

/**
Ejercicio 8: Repetir la consulta anterior, pero mostrando
el número total de créditos que está cursando
el alumno (no mostrar el valor almacenado en
el atributo tot_creditos de la relación
alumno_3ciclo. Utilizar agregación sobre las
materias cursadas por el alumno).
*/
SELECT alumno_3ciclo.nombre AS Alumno, sum(materia.creditos) AS Creditos_cursando
FROM alumno_3ciclo, materia, cursa
WHERE
alumno_3ciclo.ID = cursa.ID AND
materia.id_materia = cursa.id_materia
GROUP BY alumno_3ciclo.nombre
ORDER BY alumno_3ciclo.nombre;

/**
Ejercicio 9: Repetir la consulta anterior pero mostrando el
número total de créditos que cursa cada uno
de los alumnos de la base de datos, junto con
el ID del alumno (no mostrar el nombre del
alumno ni datos sobre los alumnos que no
cursen ninguna materia)
*/



/**
Ejercicio 10: Buscar los nombres de todos los alumnos que
hayan cursado en algún momento alguna
asignatura impartida por el departamento de
Ingeniería Telemática (no deberían aparecer
nombres duplicados)
*/

SELECT DISTINCT alumno_3ciclo.nombre AS "Nombre del alumno"
FROM alumno_3ciclo
WHERE alumno_3ciclo.ID IN (
  SELECT cursa.ID
  FROM cursa,materia
  WHERE
  cursa.id_materia = materia.id_materia AND
  materia.nombre_dpto = 'Ingeniería Telemática'
)
ORDER BY alumno_3ciclo.nombre;

/**
Ejercicio 11: Mostrar los IDs de todos los docentes que
nunca hayan impartido una materia (ni está
previsto que la impartan)
*/
SELECT DISTINCT docente.ID AS "Identificador del docente:"
FROM docente
WHERE docente.ID NOT IN(
  SELECT imparte.ID
  FROM imparte)
ORDER BY docente.ID;

/**
Ejercicio 12: Repetir la consulta anterior mostrando los
nombres de los docente, no sus IDs
*/

SELECT docente.nombre AS "Identificador del docente:"
FROM docente
WHERE docente.ID NOT IN(
  SELECT imparte.ID
  FROM imparte)
ORDER BY docente.nombre;

/**
Ejercicio 13: Encontrar los grupos con mayor y menor nú-
mero de alumnos matriculados en nuestra
universidad (sin tener en cuenta los grupos
que no tienen ningún alumno).
*/

(SELECT cursa.id_materia AS "ID Materia",cursa.id_grupo AS "ID Grupo",count(*) AS nAlumnos
FROM cursa
GROUP BY cursa.id_materia,cursa.id_grupo
ORDER BY nAlumnos desc
limit 1)
union
(SELECT cursa.id_materia AS "ID Materia",cursa.id_grupo AS "ID Grupo",count(*) AS nAlumnos
FROM cursa
GROUP BY cursa.id_materia,cursa.id_grupo
ORDER BY nAlumnos
limit 1);

/**
Ejercicio 14: Encontrar, para cada materia, todos los grupos
que tengan el máximo número de alumnos
(junto con dicho número) utilizando una
consulta anidada.
*/

/**
Ejercicio 15: Repetir la consulta anterior mostrando los
resultados ordenados de mayor a menor nú-
mero de alumnos matriculados.
*/

/**
Ejercicio 16: Mostrar los diez grupos (y su materia correspondiente)
con más alumnos matriculados de
nuestra universidad.
*/
