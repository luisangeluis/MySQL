drop procedure GetAlumnosByLetra;
delimiter //
create procedure GetAlumnosByLetra(in letra char,out cantidad int)
begin
select count(*) into cantidad
from alumnos
where nombre like concat('%',letra,'%');
end//
delimiter ;

 call GetAlumnosByLetra('j',@alumnosByJ);
 call GetAlumnosByLetra('A',@alumnosByA);
 call GetAlumnosByLetra('L',@alumnosByL);
 select @alumnosByJ as alumnosConL,@alumnosByA,@alumnosByL;
 
 

