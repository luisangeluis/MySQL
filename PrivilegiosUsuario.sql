select * from mysql.user;
/*Conceder uso bd.tablas*/
grant usage on *.* to supervisor identified by '12345';
/*Puedes indicar desde que servidor se puede conectar*/
grant usage on *.* to supervisor@localhost identified by '12345';
grant usage on *.* to supervisor@192.168.1.120 identified by '12345';
drop user supervisor@localhost;
drop user supervisor@192.168.1.120;
grant select,delete on *.* to supervisor;
grant select,delete,update,insert on *.* to supervisor;
grant all privileges on *.* to supervisor;
revoke all privileges on *.* from supervisor;
/*Actualiza la info de que privilegios hay*/
flush privileges;


/*mostrar los privilegios*/
show grants for supervisor;