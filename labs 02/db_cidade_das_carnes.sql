create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,  1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30, 1);

select * from tb_produtos;


select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%"; 

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria   
on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria   
on tb_categoria.id = tb_produtos.categoria_id
 where tb_categoria.id = 3;









