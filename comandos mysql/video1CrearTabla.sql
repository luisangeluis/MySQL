CREATE DATABASE escuela2;
USE escuela2;
CREATE TABLE alumnos(
	id INT auto_increment NOT NULL primary key,
    nombre varchar(50) NOT NULL,
    grado smallint NOT NULL,
    grupo varchar(2) NOT NULL,
    fecha_ingreso date default '0000-00-00'
	
);
