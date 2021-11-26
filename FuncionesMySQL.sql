delimiter //
create function getNombreByLetra(letra char) returns int
begin
	declare numero int;
	select count(*) into numero from alumnos where nombre like concat('%',letra,'%');
    return numero;
end//
delimiter ;

select getNombreByLetra('a');
-- left en este caso te entrega la primera letra de cada nombre en alumnos 
select left(nombre,1) from alumnos;
select left(nombre,1),getNombreByLetra(left(nombre,1)) from alumnos;


    
    