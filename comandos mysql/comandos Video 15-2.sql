CREATE database escuela;
USE escuela;
SELECT * FROM alumnos;
SELECT * FROM salones;

TRUNCATE TABLE salones;
insert into alumnos (nombre,idSalon,edad) values ("luis",1,30),("angel",2,29),("zepeda",2,29),("gonzalez",2,29);
insert into salones(nombre) values ('A'),('B'),('C'),('D');

SET foreign_key_checks=1;	

alter table alumnos add idSalon varchar(1) not null after nombre;
select idSalon, count(id) as cantidad from alumnos group by idSalon;

select min(edad) as minimaEdad, max(edad) as maximaEdad from alumnos where idSalon=1;
select * from alumnos  limit 3;
select * from alumnos limit 2,3;
select * from alumnos;
select * from alumnos order by nombre desc;



