select * FROM alumnos;

select id,nombre,edad from alumnos where edad=30;
select nombre,edad,idSalon from alumnos where edad=30 and idSalon =3;
select nombre as elNombre, idSalon as salon, fecha_ingreso as fecha from alumnos where idSalon=1; 
select * FROM alumnos group by idSalon;
select idSalon as salon, count(id) as cantidadAlumnos FROM alumnos group by idSalon;
