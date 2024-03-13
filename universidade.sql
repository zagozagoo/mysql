create database db_universidade;
use db_universidade;

create table tb_aluno (
	matricula int not null primary key auto_increment,
    nome_aluno varchar(45),
    nome_respondavel varchar(45)
);

create table tb_professor (
	id_professor int not null primary key auto_increment,
    nome_professor varchar(45),
    email varchar(45)
);

create table tb_disciplina (
	id_disciplina int not null primary key auto_increment,
    nome_disciplina varchar(45),
    carga_horaria varchar(45)
);

create table tb_turma (
	id_turma int not null primary key auto_increment,
	id_disciplina int not null,
    id_professor int not null,
    ano year,
    horario varchar (10),
    foreign key (id_disciplina) references tb_disciplina (id_disciplina),
	foreign key (id_professor) references tb_professor (id_professor)
);

create table tb_historico (
	id_historico int not null primary key auto_increment,
    matricula int not null,
    id_disciplina int not null,
    id_professor int not null,
    id_turma int not null,
    frequencia smallint,
    nota decimal(2,1),
	horario varchar (10),
    foreign key (id_disciplina) references tb_disciplina (id_disciplina),
	foreign key (id_professor) references tb_professor (id_professor),
     foreign key (id_turma) references tb_turma (id_turma),
	foreign key (matricula) references tb_aluno (matricula)
);

insert into tb_professor values
(1111, "Cesar Stati", "cesar@gmail.com"),
(default, "Luiz Cesar", "lc@gmail.com"),
(default, "Nicolas Marques", "nico@gmail.com"),
(default, "Donathan Ramalho", "dom@gmail.com"),
(default, "Melissa Moll", "moll@gmail.com"),
(default, "Luis Balem", "Hamilton@gmail.com"),
(default, "Trevisan", "trevis@gmail.com"),
(default, "Queila Lima", "queila@gmail.com"),
(default, "Luan Saad", "luan@gmail.com"),
(default, "Rafael Durand", "rafael@gmail.com")
