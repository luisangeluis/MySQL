use escuela;
select * from alumnos;
INSERT INTO alumnos (nombre,);
set FOREIGN_KEY_CHECKS = 1;
alter table salones change column nombre grupo varchar(2) not null;
alter table salones add column grado int not null after id;
update salones set grado = 1 where id =1;
INSERT INTO salones (grado,grupo) values(1,'c'),(1,'d');
INSERT INTO salones (grado,grupo) values(2,'a'),(2,'b'),(2,'c');
INSERT INTO salones (grado,grupo) values (3,'a'),(3,'b'),(3,'c');
INSERT INTO alumnos (nombre,idSalon,edad) values('pablo',2,35);
INSERT INTO alumnos (nombre,idSalon,edad) values('federico',3,22),('angel',1,29),('Francisco',1,26),('mario',1,18);

select * from alumnos;
select idSalon as salon,nombre,edad as años, fecha_ingreso as ingreso from alumnos where edad>25;

