##organizando alunos#
SET SQL_SAFE_UPDATES = 0;
create database db_escola;
use db_escola;

drop database db_escola;
drop table if exists Notas;
drop table if exists Alunos;

CREATE TABLE Alunos (
ID_ALUNO int primary key,
Nome varchar(100)
);

# tabela notas com a fk com SET NULL
CREATE TABLE Notas (
ID_NOTA int primary key,
Nota decimal(4,2),
ID_ALUNO int,
FOREIGN KEY (ID_ALUNO) REFERENCES Alunos(ID_ALUNO)on delete set null on update set null 
);

#inserindo os dados de novo
INSERT INTO Alunos (ID_ALUNO, Nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Pedro'),
(4, 'Ana'),
(5, 'Carlos');

INSERT INTO Notas (ID_NOTA, Nota, ID_ALUNO) VALUES
(1, 7.5, 1),
(2, 8.0, 1),
(3, 6.5, 2),
(4, 9.0, 2),
(5, 7.0, 3),
(6, 8.5, 3),
(7, 6.0, 4),
(8, 8.0, 4),
(9, 7.5, 5),
(10, 8.5, 5);

#o aluno joao foi deletado e agora suas notas possuem um id de aluno nulo
delete from alunos
where Nome = "João";

#a aluna maria tambem teve seu id nulo na tabela de notas
delete from alunos
where Nome = "Maria";

select * from alunos;
select * from notas;

############################################################################

create database db_escola;
use db_escola;

drop table if exists Notas;
drop table if exists Alunos;

CREATE TABLE Alunos (
ID_ALUNO int primary key,
Nome varchar(100)
);

# tabela notas com a fk com on delete RESTRICT e on update como CASCADE 
CREATE TABLE Notas (
ID_NOTA int primary key,
Nota decimal(4,2),
ID_ALUNO int,
FOREIGN KEY (ID_ALUNO) REFERENCES Alunos(ID_ALUNO)on delete restrict on update cascade
);

#inserindo os dados de novo
INSERT INTO Alunos (ID_ALUNO, Nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Pedro'),
(4, 'Ana'),
(5, 'Carlos');

INSERT INTO Notas (ID_NOTA, Nota, ID_ALUNO) VALUES
(1, 7.5, 1),
(2, 8.0, 1),
(3, 6.5, 2),
(4, 9.0, 2),
(5, 7.0, 3),
(6, 8.5, 3),
(7, 6.0, 4),
(8, 8.0, 4),
(9, 7.5, 5),
(10, 8.5, 5);

delete from alunos
where ID_Aluno = "João";

delete from alunos
where Nome = "Maria";

select * from alunos;
select * from notas;
