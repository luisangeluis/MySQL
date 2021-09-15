USE escuela;
INSERT INTO alumnos (id,nombre, edad) values (1,"luis", 30);
select * FROM  alumnos;
alter table alumnos add fecha_ingreso date not null;
insert into alumnos (nombre,idSalon,edad,fecha_ingreso) values("pedro",2,30,NOW());
insert into alumnos (nombre,idSalon,edad,fecha_ingreso) values("pedro",11,30,NOW());
update alumnos set nombre = 'luis angel' where id='1';
update alumnos set nombre = 'luis', idSalon='3' where id ='1';
select * FROM  salones;
update alumnos set idSalon='1' where idSalon='2';
update alumnos set fecha_ingreso = replace(fecha_ingreso,'0000-00-00',now());
update alumnos set nombre = replace(nombre, 'uis','uisito')



