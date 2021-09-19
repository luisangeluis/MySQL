use escuela2;
show tables;
/*Mostrar las caracteristicas de la tabla*/
show columns from alumnos;
/*Mostrar el query de la tabla*/
show create table alumnos;

rename table alumnos to alumno;
show columns from alumno;

/*Agregar campos*/
alter table alumno add edades int not null;
/*alterar las caracteristicas del campo de una tabla*/
alter table alumno change edades edad smallint not null;
/*Borrar el campo de una tabla**/
alter table alumno drop column edad;
