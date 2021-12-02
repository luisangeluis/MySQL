drop trigger logTablaAlumno;
DELIMITER //
CREATE trigger logTablaAlumno 
after insert on alumnos
for each row
begin
	insert into acciones (accion) value (concat('Se creo alumno: ',NEW.nombre,' Salon: ',NEW.idSalon));
end//
DELIMITER ;
