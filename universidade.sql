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
(default, "Rafael Durand", "rafael@gmail.com");

insert into tb_aluno values
(20220101, 'José de Alencar', 'Maria de Alencar'), 
(default, 'Machado de Assis', 'Maria José'), 
(default, 'Guimarães Rosa', 'Rosinha'), 
(default, 'Veronica Roth', 'Barbara Ross'),
(default, 'Suzanne Collins', 'Michael Collins'),
(default, 'Joe Hill', 'Stephen King'),
(default, 'Marcus Suzak', 'Helmut Suzak'),
(default, 'Agatha Christie', 'Clarissa Boehmer'),
(default, 'John Green', 'Mike Green'),
(default, 'Paula Pimenta', 'Itamar de Souza');

insert into tb_disciplina values
(1, 'Banco de Dados', '120'),
(2, 'IoT', '120'),
(3, 'C#', '120'),
(4, 'Lógica de Programação', '220'),
(5, 'Fundamentos de Eletroeletrônica', '120'),
(6, 'Desenvolvimento de Sistemas', '220');

insert into tb_turma values
(100, 1, 1111, 2021, '13:30 às 17:30'),
(default, 2, 1112, 2024, '09:30'),
(default, 3, 1113, 2024, '10:45'),
(default, 4, 1114, 2024, '13:00'),
(default, 5, 1115, 2024, '14:30'),
(default, 1, 1114, 2024, '15:45'),
(default, 2, 1112, 2024, '08:00'),
(default, 3, 1111, 2024, '09:30'),
(default, 4, 1113, 2024, '10:45'),
(default, 5, 1114, 2024, '13:00');

insert into tb_historico values
(1, 20220101, 1, 100, 1111, 80, 7.5),
(default, 20220102, 2, 101, 1112, 85, 8.2),
(default, 20220103, 3, 102, 1113, 90, 9.0),
(default, 20220104, 4, 103, 1114, 75, 7.0),
(default, 20220105, 5, 100, 1115, 95, 9.5),
(default, 20220106, 2, 103, 1111, 88, 8.8),
(default, 20220107, 3, 104, 1112, 82, 8.1),
(default, 20220108, 4, 101, 1113, 91, 9.3),
(default, 20220109, 5, 102, 1114, 79, 7.8),
(default, 20220110, 1, 104, 1115, 93, 9.7);
