/*Consultas para relacionar dos tablas*/
use escuela;
select * from alu;
select alu.nombre, alu.idSalon, alu.edad, alu.fecha_ingreso, s.grado,s.grupo
from alumnos as alu
right join salones as s
on alu.idSalon = s.id;

