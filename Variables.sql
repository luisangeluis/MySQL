SET @menor_edad := 17;
SET @mayor_edad := 18;
SET @mayor_treinta := 30;

SET @cantidadMenorEdad:=0;
SET @cantidadMayorEdad:=0;
SET @cantidadMayorTreinta:=0;



select * from alumnos limit 100;

select count(*) into @cantidadMenorEdad
from alumnos 
where edad <= @menor_edad;

select count(*) into @cantidadMayorEdad 
from alumnos 
where edad  >= @mayor_edad;

select count(*) into @cantidadMayorTreinta 
from alumnos 
where edad >= @mayor_treinta;

select @cantidadMenorEdad as menorEdad,@cantidadMayorEdad as mayorEdad,@cantidadMayorTreinta as mayorTreinta;





