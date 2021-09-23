create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;


create table tb_categoria(
id bigint auto_increment,
tipoCurso varchar(50) not null,
ead varchar (50) not null,
presencial boolean not null,
primary key(id)
);

insert into tb_categoria(tipoCurso, ead, presencial) values ("bacharelado","sim",true);
insert into tb_categoria(tipoCurso, ead, presencial) values ("Tecnologo","sim",true);
insert into tb_categoria(tipoCurso, ead, presencial) values ("Pós graduação","não",true);



select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
curso varchar(50) not null,
valor decimal(6,2) not null,
matricula_isenta boolean not null,
material_apoio_online varchar(55) not null,
estagio_obrigatorio boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Eng Software",300.00,true,"sim",true,1);
insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Ciencia da Computação",270.00,true,"sim",true,1);
insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Analise e Desenvolvimento de Sistemas",200.00,false,"sim",true,2);
insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Gestão Comercial",300.00,false,"sim",true,2);
insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Gestor de Projetos",600.00,false,"sim",false,3);
insert into tb_curso(curso, valor, matricula_isenta, material_apoio_online, estagio_obrigatorio, categoria_id) values ("Gestor de Projetos",600.00,false,"sim",false,3);



select * from tb_curso;

select * from tb_curso where valor > 50;

select * from tb_curso where valor between 300 and 600; -- para trazer algum resultado

select * from tb_curso where curso like "%j%"; 

select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id; 

select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.id = 3;