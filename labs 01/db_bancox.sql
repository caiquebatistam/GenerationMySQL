create database db_rh;


create table tb_bancox(

id bigint auto_increment,
funcionarie varchar(100) not null,
genero varchar(100) not null,
setor varchar(100) not null,
salario int (7.2),
primary key (id)
);

select * from tb_bancox;


use db_rh;

insert into tb_bancox(funcionarie, genero, setor, salario) values( "Carlos", "Masculino", "Adm", 3000.00);
insert into tb_bancox(funcionarie, genero, setor, salario) values( "Joana", "Netro", "Engenharia", 5000.00);
insert into tb_bancox(funcionarie, genero, setor, salario) values( "Suellen"," Feminino"," Tech", 4500.00);
insert into tb_bancox(funcionarie, genero, setor, salario) values( "Carla", "Feminino", "Tech", 4500.00);
select * from tb_bancox;

select * from tb_bancox where salario > 2000;

select * from tb_bancox where salario < 2000;

update  tb_bancox set salario = 1500 where id = 1;



