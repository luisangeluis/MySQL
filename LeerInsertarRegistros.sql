use escuela2;
select * from alumno;
select * from salon;
truncate table alumno;
truncate table salon;

show columns from salon;
show columns from alumno;
set foreign_key_checks =1;

insert into salon(grado,grupo) values (1,'A');
INSERT INTO salon(grado,grupo) VALUES (1,'B'),(1,'C');
INSERT INTO salon(grado,grupo) values (2,'A'),(2,'B'),(2,'C');
INSERT INTO alumno(idSalon,nombre,fecha_ingreso) values(1,'luis','2020-10-10');
INSERT INTO alumno(idSalon,nombre,fecha_ingreso) values(1,'angel','2020-10-10'),(2,'zepeda','2020-10-10'),
(2,'gonzalez','2020-10-11');



