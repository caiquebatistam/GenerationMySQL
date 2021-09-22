create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
bordas boolean not null,
pre_assada varchar(10) not null,
primary key(id)
);

insert into tb_categoria(tipo, bordas, pre_assada) values ("salgada",true,"s");
insert into tb_categoria(tipo, bordas, pre_assada) values ("doce",false,"n");


select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(50) not null,
massa varchar(50) not null,
preco decimal not null,
tamanho varchar(50) not null,
formato_corte varchar(50) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Calabresa","Fina","petisco","grande",29.90,1);
insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Frango Catupiry","Fina","normal","grande",39.90,1);
insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Portuguesa","Grossa","petisco","grande",39.90,1);
insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Brigadeiro","Fina","normal","grande",39.90,2);
insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Romeu e Julieta","Fina","normal","grande",29.90,2);
insert into tb_pizza(sabor,massa, formato_corte, tamanho, preco, categoria_id) values ("Sorvete","Fina","normal","grande",49.90,2);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "%c%"; 

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id; 

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id = 1;










