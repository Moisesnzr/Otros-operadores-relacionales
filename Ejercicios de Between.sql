
-- Primer Ejercicio.

drop table visitas;

create table visitas(
    nombre varchar2(30) default 'Anonimo',
    mail varchar2(50),
    pais varchar2(20),
    fecha date
);

insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','10/10/2016');
insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','10/10/2016');
insert into visitas values ('Juancito','JuanJosePerez@hotmail.com','Argentina','11/10/2016');
insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','12/10/2016');
insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','12/09/2016');
insert into visitas values ('Juancito','JuanJosePerez@gmail.com','Argentina','12/09/2016');
insert into visitas values ('Juancito','JuanJosePerez@hotmail.com','Argentina','15/09/2016');
insert into visitas values ('Federico1','federicogarcia@xaxamail.com','Argentina',null);

select *from visitas WHERE fecha between '12/09/2016' and '11/10/2016';


-- Segundo Ejercicio.

drop table medicamentos;

create table medicamentos(
    codigo number(6) not null,
    nombre varchar2(20),
    laboratorio varchar2(20),
    precio number(6,2),
    cantidad number(4),
    fechavencimiento date not null,
    primary key(codigo)
);

insert into medicamentos values(102,'Sertal','Roche',5.2,10,'01/02/2020');
insert into medicamentos values(120,'Buscapina','Roche',4.10,200,'01/12/2017');
insert into medicamentos values(230,'Amoxidal 500','Bayer',15.60,100,'28/12/2017');
insert into medicamentos values(250,'Paracetamol 500','Bago',1.90,20,'01/02/2018');
insert into medicamentos values(350,'Bayaspirina','Bayer',2.10,150,'01/12/2019'); 
insert into medicamentos values(456,'Amoxidal jarabe','Bayer',5.10,250,'01/10/2020');

select nombre, precio from medicamentos WHERE precio between 5 and 12;

select *from medicamentos WHERE cantidad between 100 and 200;

select *from medicamentos WHERE fechavencimiento between sysdate and '01/01/2028';

delete from medicamentos WHERE extract(year from fechavencimiento) between '2017' and '2018';