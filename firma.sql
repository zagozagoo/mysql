create database db_firma;
use db_firma;

create table tb_produto
(
	id_produto int not null primary key auto_increment,
    nome varchar(60) not null,
    categoria varchar(30),
    preco float
)default charset utf8;

create table tb_pedido
(
	id_pedido int not null primary key auto_increment,
	data_do_pedido datetime
)default charset utf8;

create table tb_cliente
(
	id_cliente int not null primary key auto_increment,
    nome varchar(255) not null,
    contato varchar(11),
	status_cliente varchar(5), 
    endereço varchar(255),
    limite_credito float
)default charset utf8;
