create database db_familia;
use db_familia;

create table tb_pai (
	id_pai smallint(6) not null primary key auto_increment,
    nome_pai varchar(50)
);

create table tb_filho(
	id_filho smallint(6) not null primary key auto_increment,
    nome_filho varchar(50),
    id_pai smallint(6),
	foreign key (id_pai) references tb_pai (id_pai) ON UPDATE set null ON DELETE set null
);

insert into tb_pai values
(1, 'Darth Vader'),
(default, 'Goku'),
(default, 'Vegeta'),
(default, 'Seu Cebola'),
(default, 'Zurg'),
(default, 'Neymar');

select * from tb_filho;
select * from tb_pai;

delete from tb_filho where id_filho < 20;

insert into tb_filho values
(3, 'Luke Skywalker', 1),
(4, 'Gohan', 2),
(5, 'Trunks', 3),
(6, 'Buzz Ligthyear', 5);

delete from tb_filho where id_filho = 4;
delete from tb_pai where id_pai = 6;

drop table tb_filho;

insert into tb_pai values 
(default, 'Neymar AGAIN');

select * from tb_pai;

insert into tb_filho values
(default, 'Cebolinha AGAIN', 4),
(default, 'Neymar Jr AGAIN', 7);

delete from tb_filho where id_filho = 1; #deletando cebolinha de novo apos usar o set null, ele some e o pai não
delete from tb_pai where id_pai = 1; #deletando darth vader, o luke continua, mas com id_pai nulo
