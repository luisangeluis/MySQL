SELECT * FROM escuela.alumnos where edad>='25'
into outfile 'mayor7.csv'
fields terminated by ','
enclosed by '"'
lines terminated by '\n';