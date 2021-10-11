use escuela2;
select * from alumno;
select * from salon;
delete from alumno where id='2';
delete from alumno where nota ='10';
insert into alumno (idSalon,nombre,fecha_ingreso,nota) values(3,'panfilo','2010-10-10','9');

insert into alumno (idSalon,nombre,fecha_ingreso,nota) values('3','ricardo','2010-10-10',10);
delete from alumno where nombre ='panfilo';

 