use escuela2;
select * from alumno;
update alumno set nombre='pedro' where nombre='zepeda';
update alumno set fecha_ingreso='2019-10-10' where id=2;

/*Alterar los campos de una tabla*/
alter table alumno add column nota int not null;
update alumno set nota = nota+10 where id=5;
update alumno set nota = nota+6 where nota =0;
update alumno set nota = replace(nota,6,10);
update alumno set nombre =replace(nombre,'ngel','ngelito');

