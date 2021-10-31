USE escuela;
show tables;
SHOW COLUMNS FROM alumnos;
SELECT * FROM alumnos;
SET FOREIGN_KEY_CHECKS =1;
ALTER TABLE alumnos change column id id INT NOT NULL AUTO_INCREMENT;
INSERT INTO alumnos (nombre,idSalon,edad) values ('picazo',1,30);
ALTER TABLE alumnos change column fecha_ingreso fecha_ingreso date not null default '0000-00-00';
SELECT id,nombre FROM alumnos;