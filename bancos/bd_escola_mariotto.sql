create database db_escola_mariotto;

use db_escola_mariotto;

create table tb_aluno (
id bigint auto_increment,
nome varchar(255) not null,
data_nascimento date not null,
turma varchar(10) not null,
primary key (id)
);

insert into tb_aluno (nome, data_nascimento, turma) values ("Juquinha","1963-11-25","Turma 32");
insert into tb_aluno (nome, data_nascimento, turma) values ("Joãozinho","1991-12-12","Turma 32");
insert into tb_aluno (nome, data_nascimento, turma) values ("Amanda","2007-02-28","Turma 33");
insert into tb_aluno (nome, data_nascimento, turma) values ("Espiriquediberto","1996-07-15","Turma 34");
insert into tb_aluno (nome, data_nascimento, turma) values ("Glaucia","1987-03-07","Turma 31");

select * from tb_aluno;

create table tb_nota (
id bigint auto_increment,
bimestre varchar(25),
nota  decimal (4,2),
aluno_id bigint,
primary key (id),
foreign key (aluno_id) references tb_aluno(id)
);

-- nota do aluno 01
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 01",9.00,1);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 02",7.00,1);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 03",5.50,1);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 04",8.50,1);

-- nota do aluno 02

insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 01",4.00,2);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 02",5.00,2);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 03",3.50,2);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 04",6.50,2);

-- nota do aluno 03

insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 01",7.00,3);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 02",8.00,3);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 03",6.50,3);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 04",9.50,3);

-- nota do aluno 04

insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 01",3.00,4);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 02",7.00,4);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 03",8.00,4);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 04",8.50,4);

-- nota do aluno 05

insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 01",8.00,5);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 02",4.00,5);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 03",7.50,5);
insert into tb_nota (bimestre, nota, aluno_id) values ("Bimestre 04",2.50,5);

select * from tb_nota;


select tb_aluno.nome, tb_aluno.turma,  format (avg(tb_nota.nota),2) as media
from  tb_aluno inner join tb_nota
on tb_nota.aluno_id = tb_aluno.id
group by tb_aluno.id; -- agrupar informação que seja repetida





