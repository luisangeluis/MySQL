/*CONSULTAS EN MYSQL*/
USE escuela;
select * from alumnos;
select * from salones;
alter table alumno
insert into salones (nombre) value();
set foreign_key_checks = 1;
delete from salones where id ='2';
truncate table salones;
drop table salones;
truncate table alumnos;

create table alumno(
	id int not null primary key,
    idSalon int not null,
    nombre varchar(50) not null,
    fechaIngreso date default '0000-00-00',
    index (idSalon), 
    foreign key 
    
);
