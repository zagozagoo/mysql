create database db_floricultura;
use db_floricultura;

create table tb_cliente
(
	id int not null primary key auto_increment,
    nome varchar(255) not null,
    rg varchar(15) unique,
    endereco varchar(60),
    telefone char(11) #char é fixo 
)default charset utf8; #para aceitar ^~ e afins, ex: Vitória

create table tb_produto
(
	id int not null primary key auto_increment,
    tipo varchar(20),
    valor decimal(6, 2) #ex: 5000,00 reais, 6 casas no total, 2 depois da vírgula
)default charset utf8;

create table tb_funcionario
(
	id int not null primary key auto_increment,
    nome varchar(255),
    rg varchar(15) unique
)default charset utf8;
