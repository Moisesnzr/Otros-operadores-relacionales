

drop table medicamentos;

create table medicamentos(
    codigo number(5),
    nombre varchar2(20),
    laboratorio varchar2(20),
    precio number(6,2),
    cantidad number(3) not null,
    fechavencimiento date not null,
    primary key(codigo)
);

insert into medicamentos values(100,'Sertal','Roche',5.2,1,'01/02/2015');
insert into medicamentos values(230,'Buscapina',null,4.10,3,'01/03/2016');
insert into medicamentos values(280,'Amoxidal 500','Bayer',15.60,100,'01/05/2017');
insert into medicamentos values(301,'Paracetamol 500','Bago',1.90,10,'01/02/2018');
insert into medicamentos values(400,'Bayaspirina','Bayer',2.10,150,'01/08/2019'); 
insert into medicamentos values(560,'Amoxidal jarabe','Bayer',5.10,250,'01/10/2020'); 

select nombre, precio from medicamentos WHERE laboratorio in ('Bayer','Bago');

select nombre, precio from medicamentos WHERE laboratorio not in ('Bayer','Bago');

select *from medicamentos WHERE cantidad between 1 and 5;

select *from medicamentos WHERE cantidad in (1,2,3,4,5);

select *from medicamentos WHERE fechavencimiento between '01/01/2015' and '01/01/2017';

select *from medicamentos WHERE extract(year from fechavencimiento) in (2015,2016);