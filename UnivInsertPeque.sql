delete from prerreq;
delete from horario;
delete from tutoriza;
delete from cursa;
delete from alumno_3ciclo;
delete from imparte;
delete from grupo;
delete from docente;
delete from materia;
delete from departamento;
delete from aula;
insert into aula values ('Bellas Artes', '101', '500');
insert into aula values ('Ciencias Sociales', '514', '10');
insert into aula values ('Escuela de Teleco', '3128', '70');
insert into aula values ('Facultad de Ciencias', '100', '30');
insert into aula values ('Facultad de Ciencias', '120', '50');
insert into departamento values ('Biología', 'Facultad de Ciencias', '90000');
insert into departamento values ('Ingeniería Telemática', 'Escuela de Teleco', '100000');
insert into departamento values ('Teoría de la Señal y Comun.', 'Escuela de Teleco', '85000');
insert into departamento values ('Economía Aplicada', 'Ciencias Sociales', '120000');
insert into departamento values ('Historia', 'Ciencias Sociales', '50000');
insert into departamento values ('Pintura', 'Bellas Artes', '80000');
insert into departamento values ('Física', 'Facultad de Ciencias', '70000');
insert into materia values ('BIO-101', 'Intro. a la Biología Molecular', 'Biología', '4');
insert into materia values ('BIO-301', 'Genética Avanzada', 'Biología', '4');
insert into materia values ('BIO-399', 'Biología Computacional', 'Biología', '3');
insert into materia values ('IT-101', 'Arquitecturas Avanzadas', 'Ingeniería Telemática', '4');
insert into materia values ('IT-190', 'Diseño de Compiladores', 'Ingeniería Telemática', '4');
insert into materia values ('IT-315', 'Robótica', 'Ingeniería Telemática', '3');
insert into materia values ('IT-319', 'Procesado de Imágenes', 'Ingeniería Telemática', '3');
insert into materia values ('IT-347', 'Bases de Datos', 'Ingeniería Telemática', '3');
insert into materia values ('TSC-181', 'Intro. a los Sistemas Digitales', 'Teoría de la Señal y Comun.', '3');
insert into materia values ('EA-201', 'Inversión en Bolsa', 'Economía Aplicada', '3');
insert into materia values ('HIS-351', 'Historia Contemporánea', 'Historia', '3');
insert into materia values ('PI-199', 'Pintura Hiperrealista', 'Pintura', '3');
insert into materia values ('FIS-101', 'Principios de Física', 'Física', '4');
insert into docente values ('10101', 'Sara López', 'Ingeniería Telemática', '65000');
insert into docente values ('12121', 'Lucía Fernández', 'Economía Aplicada', '90000');
insert into docente values ('15151', 'Pablo Pereira', 'Pintura', '40000');
insert into docente values ('22222', 'Ernesto Lago', 'Física', '95000');
insert into docente values ('32343', 'Elena Trigo', 'Historia', '60000');
insert into docente values ('33456', 'Gerardo Varela', 'Física', '87000');
insert into docente values ('45565', 'Carlos Vila', 'Ingeniería Telemática', '75000');
insert into docente values ('58583', 'Javier Gómez', 'Historia', '62000');
insert into docente values ('76543', 'Soraya Simón', 'Economía Aplicada', '80000');
insert into docente values ('76766', 'Carlos Sanz', 'Biología', '72000');
insert into docente values ('83821', 'Brais Vázquez', 'Ingeniería Telemática', '92000');
insert into docente values ('98345', 'Carla Tomás', 'Teoría de la Señal y Comun.', '80000');
insert into grupo values ('BIO-101', '1', 'Segundo', '2009', 'Ciencias Sociales', '514', 'B');
insert into grupo values ('BIO-301', '1', 'Segundo', '2010', 'Ciencias Sociales', '514', 'A');
insert into grupo values ('IT-101', '1', 'Primero', '2009', 'Bellas Artes', '101', 'H');
insert into grupo values ('IT-101', '1', 'Segundo', '2010', 'Bellas Artes', '101', 'F');
insert into grupo values ('IT-190', '1', 'Segundo', '2009', 'Escuela de Teleco', '3128', 'E');
insert into grupo values ('IT-190', '2', 'Segundo', '2009', 'Escuela de Teleco', '3128', 'A');
insert into grupo values ('IT-315', '1', 'Segundo', '2010', 'Facultad de Ciencias', '120', 'D');
insert into grupo values ('IT-319', '1', 'Segundo', '2010', 'Facultad de Ciencias', '100', 'B');
insert into grupo values ('IT-319', '2', 'Segundo', '2010', 'Escuela de Teleco', '3128', 'C');
insert into grupo values ('IT-347', '1', 'Primero', '2009', 'Escuela de Teleco', '3128', 'A');
insert into grupo values ('TSC-181', '1', 'Segundo', '2009', 'Escuela de Teleco', '3128', 'C');
insert into grupo values ('EA-201', '1', 'Segundo', '2010', 'Bellas Artes', '101', 'B');
insert into grupo values ('HIS-351', '1', 'Segundo', '2010', 'Ciencias Sociales', '514', 'C');
insert into grupo values ('PI-199', '1', 'Segundo', '2010', 'Bellas Artes', '101', 'D');
insert into grupo values ('FIS-101', '1', 'Primero', '2009', 'Facultad de Ciencias', '100', 'A');
insert into imparte values ('10101', 'IT-101', '1', 'Primero', '2009');
insert into imparte values ('10101', 'IT-315', '1', 'Segundo', '2010');
insert into imparte values ('10101', 'IT-347', '1', 'Primero', '2009');
insert into imparte values ('12121', 'EA-201', '1', 'Segundo', '2010');
insert into imparte values ('15151', 'PI-199', '1', 'Segundo', '2010');
insert into imparte values ('22222', 'FIS-101', '1', 'Primero', '2009');
insert into imparte values ('32343', 'HIS-351', '1', 'Segundo', '2010');
insert into imparte values ('45565', 'IT-101', '1', 'Segundo', '2010');
insert into imparte values ('45565', 'IT-319', '1', 'Segundo', '2010');
insert into imparte values ('76766', 'BIO-101', '1', 'Segundo', '2009');
insert into imparte values ('76766', 'BIO-301', '1', 'Segundo', '2010');
insert into imparte values ('83821', 'IT-190', '1', 'Segundo', '2009');
insert into imparte values ('83821', 'IT-190', '2', 'Segundo', '2009');
insert into imparte values ('83821', 'IT-319', '2', 'Segundo', '2010');
insert into imparte values ('98345', 'TSC-181', '1', 'Segundo', '2009');
insert into alumno_3ciclo values ('00128', 'Pedro Núñez', 'Ingeniería Telemática', '102');
insert into alumno_3ciclo values ('12345', 'Sandra López', 'Ingeniería Telemática', '32');
insert into alumno_3ciclo values ('19991', 'Benito Santos', 'Historia', '80');
insert into alumno_3ciclo values ('23121', 'Juan Chávez', 'Economía Aplicada', '110');
insert into alumno_3ciclo values ('44553', 'Ana Rodríguez', 'Física', '56');
insert into alumno_3ciclo values ('45678', 'Luis Fernández', 'Física', '46');
insert into alumno_3ciclo values ('54321', 'Olaya Gómez', 'Ingeniería Telemática', '54');
insert into alumno_3ciclo values ('55739', 'Pedro Sánchez', 'Pintura', '38');
insert into alumno_3ciclo values ('70557', 'Eva Yáñez', 'Física', '0');
insert into alumno_3ciclo values ('76543', 'Manuel Álvarez', 'Ingeniería Telemática', '58');
insert into alumno_3ciclo values ('76653', 'Antía Souto', 'Teoría de la Señal y Comun.', '60');
insert into alumno_3ciclo values ('98765', 'Dolores Rodríguez', 'Teoría de la Señal y Comun.', '98');
insert into alumno_3ciclo values ('98988', 'Tania Domínguez', 'Biología', '120');
insert into cursa values ('00128', 'IT-101', '1', 'Primero', '2009', '8,5');
insert into cursa values ('00128', 'IT-347', '1', 'Primero', '2009', '8,0');
insert into cursa values ('12345', 'IT-101', '1', 'Primero', '2009', '5,5');
insert into cursa values ('12345', 'IT-190', '2', 'Segundo', '2009', '8,5');
insert into cursa values ('12345', 'IT-315', '1', 'Segundo', '2010', '8,5');
insert into cursa values ('12345', 'IT-347', '1', 'Primero', '2009', '8,5');
insert into cursa values ('19991', 'HIS-351', '1', 'Segundo', '2010', '6,5');
insert into cursa values ('23121', 'EA-201', '1', 'Segundo', '2010', '6,0');
insert into cursa values ('44553', 'FIS-101', '1', 'Primero', '2009', '6,5');
insert into cursa values ('45678', 'IT-101', '1', 'Primero', '2009', '0,0');
insert into cursa values ('45678', 'IT-101', '1', 'Segundo', '2010', '7,5');
insert into cursa values ('45678', 'IT-319', '1', 'Segundo', '2010', '7,0');
insert into cursa values ('54321', 'IT-101', '1', 'Primero', '2009', '7,5');
insert into cursa values ('54321', 'IT-190', '2', 'Segundo', '2009', '7,5');
insert into cursa values ('55739', 'PI-199', '1', 'Segundo', '2010', '7,5');
insert into cursa values ('76543', 'IT-101', '1', 'Primero', '2009', '8,0');
insert into cursa values ('76543', 'IT-319', '2', 'Segundo', '2010', '8,0');
insert into cursa values ('76653', 'TSC-181', '1', 'Segundo', '2009', '5,5');
insert into cursa values ('98765', 'IT-101', '1', 'Primero', '2009', '5,0');
insert into cursa values ('98765', 'IT-315', '1', 'Segundo', '2010', '6,5');
insert into cursa values ('98988', 'BIO-101', '1', 'Segundo', '2009', '8,0');
insert into cursa values ('98988', 'BIO-301', '1', 'Segundo', '2010', null);
insert into tutoriza values ('00128', '45565');
insert into tutoriza values ('12345', '10101');
insert into tutoriza values ('23121', '76543');
insert into tutoriza values ('44553', '22222');
insert into tutoriza values ('45678', '22222');
insert into tutoriza values ('76543', '45565');
insert into tutoriza values ('76653', '98345');
insert into tutoriza values ('98765', '98345');
insert into tutoriza values ('98988', '76766');
insert into horario values ('A', 'L', '8', '0', '8', '50');
insert into horario values ('A', 'X', '8', '0', '8', '50');
insert into horario values ('A', 'V', '8', '0', '8', '50');
insert into horario values ('B', 'L', '9', '0', '9', '50');
insert into horario values ('B', 'X', '9', '0', '9', '50');
insert into horario values ('B', 'V', '9', '0', '9', '50');
insert into horario values ('C', 'L', '11', '0', '11', '50');
insert into horario values ('C', 'X', '11', '0', '11', '50');
insert into horario values ('C', 'V', '11', '0', '11', '50');
insert into horario values ('D', 'L', '13', '0', '13', '50');
insert into horario values ('D', 'X', '13', '0', '13', '50');
insert into horario values ('D', 'V', '13', '0', '13', '50');
insert into horario values ('E', 'M', '10', '30', '11', '45 ');
insert into horario values ('E', 'J', '10', '30', '11', '45 ');
insert into horario values ('F', 'M', '14', '30', '15', '45 ');
insert into horario values ('F', 'J', '14', '30', '15', '45 ');
insert into horario values ('G', 'L', '16', '0', '16', '50');
insert into horario values ('G', 'X', '16', '0', '16', '50');
insert into horario values ('G', 'V', '16', '0', '16', '50');
insert into horario values ('H', 'X', '10', '0', '12', '30');
insert into prerreq values ('BIO-301', 'BIO-101');
insert into prerreq values ('BIO-399', 'BIO-101');
insert into prerreq values ('IT-190', 'IT-101');
insert into prerreq values ('IT-315', 'IT-101');
insert into prerreq values ('IT-319', 'IT-101');
insert into prerreq values ('IT-347', 'IT-101');
insert into prerreq values ('TSC-181', 'FIS-101');