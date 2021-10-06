use escuela2;
alter table alumno drop constraint fk_idSalon ;

alter table alumno add constraint fk_idSalon foreign key (idSalon) references salon(id)
on delete cascade on update cascade;

insert into salon (grado,grupo) values (1 ,'A');
insert into salon (grado,grupo) values (1,'B'),(1,'C');
INSERT INTO alumno (idSalon,nombre,fecha_ingreso) values (1,'luis','2011-10-10');
INSERT INTO alumno (idSalon,nombre,fecha_ingreso) values (1,'angel','2000-06,25');
INSERT INTO alumno (idSalon,nombre,fecha_ingreso) values (2,'zepeda','2000-06,05,'),(2,'gonzalez','2000-06,01');
    
alter table alumno drop constraint fk_idSalon;

alter table alumno add constraint fk_idSalon foreign key (idSalon) references salon(id) 
on update restrict on delete restrict;

/*restrict en las relaciones no te permite eliminar registros que coinciden en la llave foranea*/
delete from salon where id ='1';

alter table alumno drop foreign key fk_idSalon;

truncate alumno;
truncate salon; 
alter table alumno change column idSalon idSalon int NULL;
alter table alumno add constraint fk_idSalon foreign key (idSalon) references salon(id)
	on update 	set null on delete set null;
insert into salon (grado,grupo) values (1,'A'),(1,'B'),(1,'C');
INSERT INTO alumno(idSalon,nombre,fecha_ingreso) values (1,'luis','2000-10-10'),(1,'angel','2000-10-10'),
	(2,'zepeda','2000-10-10'),(2,'gonzalez','2000-10-10');
    
delete from salon where id= '1';
