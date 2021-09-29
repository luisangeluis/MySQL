use escuela2;
create table salon(
	id int not null auto_increment primary key,
    grado int not null,
    grupo varchar(2) not null
);
/*cambiar los campos de la tabla*/
alter table alumno drop column grado;
alter table alumno drop column grupo;
alter table alumno drop column idSalon;
alter table alumno add column idSalon int not null after id;

/*Crear relaciones, En la opcion de cascade si borras el salon se borra el registro en alumno y si cambia el 
id de salon se actualiza en el campo de id salon*/
alter table alumno add constraint fk_idSalon foreign key (idSalon) references salon(id) 
on update cascade on delete cascade;

insert into salon (grado,grupo) values(1,'A'),(1,'B'),(1,'C');
insert into alumno (idSalon,nombre) values(1,'angel'),(2,'zepeda'),(2,'gonzalez');
