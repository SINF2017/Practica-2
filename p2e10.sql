USE UnivPeque;

/**
Ejercicio 1.
*/
\! echo "Ejercicio 1:";
SELECT *
FROM docente;

/**
Ejercicio 2.
*/
\! echo "Ejercicio 2:";
SELECT nombre
FROM docente
WHERE nombre_dpto = 'Ingeniería Telemática';

/**
Ejercicio 3.
*/
\! echo "Ejercicio 3:";
SELECT nombre
FROM docente
WHERE nombre_dpto = 'Ingeniería Telemática' AND salario > 70000;

/**
Ejercicio 4.
*/
\! echo "Ejercicio 4:";
SELECT ID,nombre,docente.nombre_dpto,salario,edificio,presupuesto
FROM docente,departamento
WHERE departamento.nombre_dpto = docente.nombre_dpto;

/**
Ejercicio 4 varainte.
*/
\! echo "Ejercicio 4 variante:";
SELECT ID,nombre,docente.nombre_dpto,salario, edificio, presupuesto
FROM docente
LEFT JOIN departamento ON docente.nombre_dpto= departamento.nombre_dpto;

/**
Ejercicio 5.
*/
\! echo "Ejercicio 5:";
SELECT materia.nombre
FROM materia
WHERE nombre_dpto = 'Ingeniería Telemática' AND creditos = 3;

/**
Ejercicio 6.
*/
\! echo "Ejercicio 6:";
SELECT materia.id_materia,materia.nombre
FROM materia,cursa
WHERE cursa.ID = 12345 AND materia.id_materia = cursa.id_materia;

/**
Ejercicio 7.
*/
\! echo "Ejercicio 7:";
SELECT
