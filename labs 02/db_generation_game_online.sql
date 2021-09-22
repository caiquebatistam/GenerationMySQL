create database db_generation_game_online;

use  db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
arma varchar(255) not null,
pet varchar(50) not null,
faccao varchar(100) not null,
primary key (id)
);

insert into tb_classe (arma,pet,faccao) values ("dual blade","amigato","hunter");
insert into tb_classe (arma,pet,faccao) values ("long sword","amigato","dark hunter");
insert into tb_classe (arma,pet,faccao) values ("insect Glaive","amicão","dark hunter");
insert into tb_classe (arma,pet,faccao) values ("Sword and Shield","amicão","hunter");
insert into tb_classe (arma,pet,faccao) values ("Bow","amigato","dark hunter");
insert into tb_classe (arma,pet,faccao) values ("Marreta","amigato","hunter");

select * from tb_classe;



create table tb_personagem (
id bigint auto_increment,
nick varchar (50) not null,
tipo varchar (50)  not null,
agilidade varchar(50) not null,
genero varchar(50) not null,
dano int not null,
defesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("FifanofauroFefis","melee","alto","m","1000","500",1);
insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("PUFAO","melee","media","m","7100","600",2);
insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("Pregnant Taubate","melee","alta","f","3900","700",6);
insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("Tilapia","melee","media","n","2500","4000",4);
insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("Coronga","range","media","f","8000","300",2);
insert into tb_personagem (nick, tipo,agilidade,genero,dano,defesa,classe_id) values ("Corvo","melee","media","n","5000","3500",5);

select * from tb_personagem;



select * from tb_personagem where dano > 2000;

select * from tb_personagem where dano between 1000 and 2000;

select * from tb_personagem where nick like "%c%"; 




select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id; 

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where tb_classe.id = 2;




