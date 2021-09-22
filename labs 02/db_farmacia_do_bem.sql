create database db_farmacia_do_bem;

use db_farmacia_do_bem;


create table tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
generico boolean not null,
quantidade int not null,
primary key(id)
);

insert into tb_categoria(tipo, generico, quantidade) values ("Medicamentos",true,50);
insert into tb_categoria(tipo, generico, quantidade) values ("Cosméticos",false,100);


select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal not null,
comprimido varchar(50),
caixa boolean not null,
quantidade_unidades int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Atomoxetina",15.0,"s",true,12,1);
insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Anfotericina B",23.90,"s",true,12,1);
insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Anfetamina",50.0,"s",true,12,1);
insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Banfotericina B",9.0,"s",true,12,1);
insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Condicionador",12.0,"n",false,1,2);
insert into tb_produto(nome, preco, comprimido, caixa, quantidade_unidades, categoria_id) values ("Shampoo",12.0,"n",false,1,2);


select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%"; 

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id; 

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2;



