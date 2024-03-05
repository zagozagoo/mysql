create database db_escola;
use db_escola;

create table tb_professor
(
	id_professor int not null primary key auto_increment,
    nome varchar(255) not null,
    contato varchar(11),
    area_de_especializacao varchar(255)
)default charset utf8;

create table tb_disciplina
(
	id_disciplina int not null primary key auto_increment,
	sigla varchar(6),
    carga_horaria int,
    descricao varchar(255)
)default charset utf8;

create table tb_aluno
(
	id_aluno int not null primary key auto_increment,
    nome varchar(255) not null,
	rg varchar(15) unique,
	cpf varchar(15) unique,
    contato varchar(11),
	ocorrência varchar(255), 
    endereço varchar(255),
	nascimento varchar(10),
    nome_da_mae varchar(255)
)default charset utf8;

insert into tb_professor values
('1234', 'Nicolas Marques','419999999','banco de dados');
insert into tb_professor values
(default, 'Zagozago','4199998799','amassa muito');

select * from tb_professor;
