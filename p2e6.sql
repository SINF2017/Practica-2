use practica2;
drop table if exists pelicula_actor,actores,peliculas,directores;

/*show triggers;*/
drop trigger if exists check_edad_dir_bi;
drop trigger if exists check_edad_dir_bu;
drop trigger if exists check_edad_act_bi;
drop trigger if exists check_edad_act_bu;

create table Directores(
	ID_director integer,
	nombre char(20) not null,
	imbd integer unique,
	edad integer,
	primary key (ID_director)
)engine = innodb;

DELIMITER $$  
CREATE TRIGGER check_edad_dir_bi BEFORE INSERT ON Directores FOR EACH ROW  
BEGIN  
    DECLARE dummy,baddata INT;  
    SET baddata = 0;  
    IF NEW.edad > 120 THEN  
        SET baddata = 1;  
    END IF;  
    IF NEW.edad < 0 THEN  
        SET baddata = 1;  
    END IF;  
    IF baddata = 1 THEN  
        SELECT CONCAT('No se puede insertar porque la edad ',NEW.edad,' no es valida.')   
        INTO dummy FROM information_schema.tables;
    END IF;  
END; $$

DELIMITER $$
CREATE TRIGGER check_edad_dir_bu BEFORE UPDATE ON Directores FOR EACH ROW  
BEGIN  
    DECLARE dummy,baddata INT;  
    SET baddata = 0;  
    IF NEW.edad > 120 THEN  
        SET baddata = 1;  
    END IF;  
    IF NEW.edad < 0 THEN  
        SET baddata = 1;  
    END IF;  
    IF baddata = 1 THEN  
        SELECT CONCAT('No se puede actualizar porque la edad ',NEW.edad,' no es valida.')
        INTO dummy FROM information_schema.tables;
    END IF;  
END; $$

DELIMITER ;

create table Peliculas(
	ID_pelicula integer,
	titulo char(20) not null,
	ID_director integer not null,
	imbd integer unique,
	primary key (ID_pelicula),
	foreign key (ID_director) references Directores (ID_director) 
		on delete cascade on update cascade
)engine=innodb;

create table Actores (
	ID_actor integer PRIMARY KEY,
	nombre char(20) not null,
	imbd integer unique,
	edad integer
)engine=innodb;

DELIMITER $$  
CREATE TRIGGER check_edad_act_bi BEFORE INSERT ON Actores FOR EACH ROW  
BEGIN  
    DECLARE dummy,baddata INT;  
    SET baddata = 0;  
    IF NEW.edad > 120 THEN  
        SET baddata = 1;  
    END IF;  
    IF NEW.edad < 0 THEN  
        SET baddata = 1;  
    END IF;  
    IF baddata = 1 THEN  
        SELECT CONCAT('No se puede insertar porque la edad ',NEW.edad,' no es valida.')   
        INTO dummy FROM information_schema.tables;
    END IF;  
END; $$
DELIMITER $$  
CREATE TRIGGER check_edad_act_bu BEFORE UPDATE ON Actores FOR EACH ROW  
BEGIN  
    DECLARE dummy,baddata INT;  
    SET baddata = 0;  
    IF NEW.edad > 120 THEN  
        SET baddata = 1;  
    END IF;  
    IF NEW.edad < 0 THEN  
        SET baddata = 1;  
    END IF;  
    IF baddata = 1 THEN  
        SELECT CONCAT('No se puede actualizar porque la edad ',NEW.edad,' no es valida.')
        INTO dummy FROM information_schema.tables;
    END IF;  
END; $$

create table pelicula_actor(
	ID_pelicula integer not null,
	ID_actor integer not null,
	primary key (ID_pelicula,ID_actor),
	foreign key (ID_actor) references Actores (ID_actor)
		on delete cascade on update cascade,
	foreign key (ID_pelicula) references Peliculas (ID_pelicula)
		on delete cascade on update cascade
) engine=innodb;

insert into Actores values (0,'Juan Perez',78542,25);
insert into Actores values (1,'Jose Gonzalez',8745,31);
insert into Actores values (2,'Ana Diaz',794613,15);
insert into Actores values (3,'Pepa Salgado',1364,9);
insert into Actores values (4,'Marcial Fernandez',0225,85);
insert into Actores values (5,'Maria Santos',159852,16);
/*insert into Actores values (654,'Edad incorrecta',7896542,155);*/

insert into Directores values (0,'Jorge Puyol',545212514,55);
insert into Directores values (1,'David Varela',785285,43);
insert into Directores values (2,'Sofia Rodriguez',78854,25);
insert into Directores values (3,'Rosa Goce',79542,79);
insert into Directores values (4,'Andrea Mandado',645325,28);
insert into Directores values (5,'Valentin Ramirez',7985452,33);

insert into Peliculas values (0,'Tarzan',4,0120855);
insert into Peliculas values (1,'El Libro de la Selva',1,0061852);
insert into Peliculas values (2,'El Rey Leon',2,0110357);
insert into Peliculas values (3,'Mulan',0,0120762);
insert into Peliculas values (4,'Pocahontas',5,0114148);
insert into Peliculas values (5,'Buscando a Nemo',3,0266543);
insert into Peliculas values (6,'La Bella y la Bestia',3,0101414);

insert into pelicula_actor values (0,1);
insert into pelicula_actor values (0,2);
insert into pelicula_actor values (0,3);
insert into pelicula_actor values (0,0);
insert into pelicula_actor values (6,1);
insert into pelicula_actor values (6,2);
insert into pelicula_actor values (3,3);
insert into pelicula_actor values (4,0);
insert into pelicula_actor values (5,1);