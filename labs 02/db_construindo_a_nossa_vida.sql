create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_categoria(
id bigint auto_increment,
informatica varchar(50) not null,
quantidade int not null,
garantia1ano boolean,
primary key(id)
);

insert into tb_categoria(informatica, quantidade, garantia1ano) values ("Computadores e Informática",100,true);
insert into tb_categoria(informatica, quantidade, garantia1ano) values ("Áudio e Som",100,true);
insert into tb_categoria(informatica, quantidade, garantia1ano) values ("Acessório Eletrônicos e Som",100,false);
insert into tb_categoria(informatica, quantidade, garantia1ano) values ("Eletrônicos Escritório",100,true);


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(6,2) not null,
brinde boolean not null,
cor varchar(55) not null,
bluetooth boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Monitor Acer",850.00,false,"preto",false,1);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Monitor Dell",950.00,false,"preto",false,1);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Monitor Redragon",900.00,true,"cinza",false,1);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Fone JBL",280.00,false,"preto",true,2);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Teclado",350.00,true,"preto",true,3);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Mouse",180.00,false,"preto",true,3);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Tomada",20.00,false,"preto",false,3);
insert into tb_produto(nome, preco, brinde, cor, bluetooth, categoria_id) values ("Impressora",750.00,false,"preto",true,4);


select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%"; 

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id; 

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 3;