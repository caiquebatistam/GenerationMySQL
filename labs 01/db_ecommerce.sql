create database db_ecommerce; 

use db_ecommerce;

create table tb_produto(
id bigint auto_increment,
quantidade int not null,
nome varchar(100) not null,
valor int(7.2)not null,
tipo varchar(100)not null,
primary key (id)

);

insert into tb_produto (nome, quantidade, tipo, valor) values ("Mouse",100,"tecnologia",45.00);
insert into tb_produto (nome, quantidade, tipo, valor) values ("Monitor",100,"tecnologia",2000.00);
insert into tb_produto (nome, quantidade, tipo, valor) values ("Teclado",100,"tecnologia",75.00);
insert into tb_produto (nome, quantidade, tipo, valor) values ("Fone",100,"tecnologia",150.00);


select * from tb_produto;

select * from tb_produto where valor > 500;
select * from tb_produto where valor < 500;

update tb_produto set valor = 2500 where id = 2;


