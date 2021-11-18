/*Consultas para relacionar dos tablas*/
use escuela;
select * from alu;
select alu.nombre, alu.idSalon, alu.edad, alu.fecha_ingreso, s.grado,s.grupo
from alumnos as alu
right join salones as s
on alu.idSalon = s.id;

/*Inner join con tres tablas*/

alter table clase RENAME TO CLASES;
ALTER TABLE materia Rename TO materias;
select * from clases;
select *from alumnos;
select * FROM materias;
INSERT INTO clases (idAlumno, idMateria, hora) VALUES 
('1', '1', '8:00'),
('1', '2', '9:00'),
('1', '3', '10:00'),
('1', '4', '11:00'),
('1', '5', '12:00'),
('2', '1', '8:00'),
('2', '2', '9:00'),
('2', '3', '10:00'),
('2', '4', '11:00'),
('2', '5', '12:00'),
('3', '1', '8:00'),
('3', '2', '9:00'),
('3', '3', '10:00'),
('3', '4', '11:00'),
('3', '5', '12:00');
show columns from materias;
select * from materias;
select * FROM clases;

select alu.nombre as alumno, mates.nombre as materia, class.hora
from clases as class
inner join alumnos as alu
on class.idAlumno = alu.id
inner join materias  mates
on class.idMateria = mates.id
where class.hora between '08:00' and '10:00';

select * from clases;


