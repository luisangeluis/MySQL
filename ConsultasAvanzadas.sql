use escuela;
select * from alumnos limit 100;
select * from salones limit 100;

/*Podemos usar parentesis para agrupar bien las consultas a la bd*/
select * from alumnos where (edad=18 or edad=29) and idSalon =1;
select * from alumnos where edad<>30 and edad!=25;
select * from alumnos where edad is null;

/**Mas formas de poner un rango en las busquedas*/
select * from alumnos where idSalon between 2 and 3;
select * from alumnos where idSalon in (2,3);
select * from alumnos where idSalon >= 2 and idSalon <= 3;

/*consulta de una relacion de dos tablas */
/*devuelve alumnos con el idSalon donde el grado del salon sea 1)*/
select * from alumnos where idSalon in (select id from salones where grado = 1);

/**Entrega  resultados si el nombre tiene una p revisar mas de estos ejemplos*/
select * from alumnos where nombre like '%p%';

/**Entrega  resultados si el nombre no tiene una p revisar mas de estos ejemplos*/
select * from alumnos where nombre not like '%p%';


