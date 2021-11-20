SET FOREIGN_KEY_CHECKS = 1;
USE escuela;
select * from alumnos;

/*BORRAR LA VISTA*/
DROP view alumnosSinSalon;

/*CREAR LA VISTA*/
CREATE VIEW alumnosSinSalon AS
SELECT id, nombre as alumno
FROM alumnos
WHERE idSalon is null;

/*SE PUEDE USAR ALTER PARA REESCRIBIR LA VISTA*/
ALTER VIEW alumnosSinSalon AS
SELECT id, nombre as alumno, edad
FROM alumnos
WHERE idSalon is null;

/*USAR LA VISTA*/
SELECT * 
FROM alumnossinsalon
/*DESPUES DE USAR LA VISTA SE PUEDE UTILIZAR EL ALIAS COMO SI FUERA UN CAMPO*/
WHERE alumno like 'M%';

/*VISTAS CON INNER JOIN*/
alter VIEW VistaAlumnosEnMaterias as
select count(m.id) as cantidadAlumnos, m.nombre as materia
FROM clases as c
inner join alumnos as a on c.idAlumno = a.id
inner join materias as m on c.idMateria = m.id
group by m.id;

select * from vistaAlumnosEnMaterias;



