create database db_escola;


use db_escola;

create table tb_alunos(

id bigint auto_increment,
nome varchar(100)not null,
idade int not null,
nota int not null,
materia varchar(100)not null,
primary key (id)

);


select * from  tb_alunos;

insert into tb_alunos (nome, idade, nota, materia) values ("Marcos",14,10,"Matematica");
insert into tb_alunos (nome, idade, nota, materia) values ("Rodolfo",13,9,"Matematica");
insert into tb_alunos (nome, idade, nota, materia) values ("Cleide",13,8,"Matematica");
insert into tb_alunos (nome, idade, nota, materia) values ("Romeu",14,9,"Matematica");

SELECT * FROM tb_alunos where nota > 7;
SELECT * FROM tb_alunos where nota < 7;

update tb_alunos set materia = "portugues" where id=2;

