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
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select * from tb_produtos order by nome; -- para pedir pelo nome em ordem crescente de A-Z

select * from tb_produtos order by nome DESC; -- mostrar a tabelha pelo nome em ordem decrescente

select * from tb_produtos where preco > 20 and categoria_id = 1; -- operadores lógicos no MySQL

select * from tb_produtos where preco > 20 or categoria_id = 1; -- operadores lógicos no MySQL

select * from tb_produtos where  not categoria_id = 1; -- operadores lógicos no MySQL

select * from tb_produtos where nome like "%hamburguer%"; -- busca por texto através de um padrão que eu estabeleci -- tanto faz como inici ou termina

select * from tb_produtos where nome like "%ha"; -- comece com qualquer coisa e termine com ha

select * from tb_produtos where nome like "ha%"; -- comece com ha, e termine com qualquer coisa

select * from tb_produtos where preco in (20, 30, 40) order by preco; -- mesma coisa de usar o operador or(ou) ex : preço = 20 ou = 30 ou = 40
														-- Order By -> faz a ordenação

select * from tb_produtos where preco between 20 and 40; -- between trás os resultados que eu estabeleci, no ex vai trazer os valores entre 20 e 40

select * from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15"; -- quando for passar data, lembrar que é no padrão americano

select  count(*) from tb_produtos; -- vai contar quantos registro tem minha tabela

select  count(categoria_id) from tb_produtos; -- fazer a contagem por categoria, lembrando que se o valor for null ele não conta.

select  sum(preco) from tb_produtos; -- comando para somar o preco de todos os produtos.

select  sum(preco/2) from tb_produtos; -- efetuando e dividindo por 2 por exemplo.

select  avg(preco) from tb_produtos; -- avg -> average -> comando para calcular a média 

select  avg(preco) as media from tb_produtos; -- as recursos de apelido, usando o as media, a tabela aparecera com apelido media

select  format (avg(preco),2) as media from tb_produtos; -- comando para formatar o valor média com casas decimais.

select max(preco) from tb_produtos; -- trazer o valor maximo

select min(preco) from tb_produtos; -- trazer o valor minino

select * from tb_produtos where preco = (select min(preco) from tb_produtos); -- traga tudo oq for igual ao preço minimo
																				-- junção de consultas
                                                                               
select nome, preco from tb_produtos where preco = (select min(preco) from tb_produtos); -- mesmo ex trazendo apenas duas colunas nome e preco                                                                              
                                                                                
select * from tb_produtos where length(nome) = 3; -- buscar por quantidades de caracteres.alter


		-- INNER JOIN
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria   -- relacionamento inner join, só vai trazer se houver relação entre chave primaria tbcateogrias, e chave estrangeiras tbprodutos
on tb_categoria.id = tb_produtos.categoria_id; -- tb_categoria.id -> chave primaria / tb_produtos.categoria_id -> chave estrangeira

		-- LEFT JOIN ; trás tudo do inner mais oq esta a esquerda
        
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos left join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

		-- RIGHT JOIN

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos right join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;















