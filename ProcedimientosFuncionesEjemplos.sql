
drop procedure multiplicarSumar;
-- Ejemplo de procedimiento
-- Se puede usar funciones dentro del procedimiento
delimiter //
create procedure multiplicarSumar(in num1 int, in num2 int, out resMulti int, out resSuma int)
begin
	select multiplicar(num1,num2), num1+num2 into resMulti, resSuma;
end//
delimiter ;

-- Ejemplo de funcion
delimiter //
create function multiplicar(num1 int, num2 int) returns int
begin
	set @resultado = 0;
	Select num1*num2 into @resultado;
    return @resultado;
end//
delimiter ;
-- Uso de procedimiento, devuelve varios valores
set @resMulti = 0; 
set @resSuma = 0;

call MultiplicarSumar(3,3,@resMulti,@resSuma);
select @resMulti as multi ,@resSuma as suma;

-- Uso de funcion devuelve un solo valor
select multiplicar(4,4);



