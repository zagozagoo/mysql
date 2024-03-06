create database db_floricultura;
use db_floricultura;

create table tb_cliente(
IDCliente int not null primary key auto_increment,
Nome varchar(255) not null,
RG varchar(15) unique,
endereco varchar(60),
telefone char(11)
)default charset utf8;

create table tb_produto(
IDProduto int not null primary key auto_increment,
Tipo varchar(20) not null,
Preco decimal(6,2)
)default charset utf8;

create table tb_funcionario(
IDFuncionario int not null primary key auto_increment,
Nome varchar(255) not null,
RG varchar(15) unique
) default charset utf8;

create table tb_venda (
	IDVenda int not null primary key auto_increment,
    valor decimal(8,2) not null,
    data_compra datetime not null,
    IDCliente int not null,
    IDProduto int not null,
    foreign key(IDCliente) references tb_cliente(IDCliente),
	foreign key(IDProduto) references tb_produto(IDProduto)
);

select * from tb_venda;

alter table tb_venda add column IDFuncionario int not null;
alter table tb_venda add constraint fk_funcionario foreign key(IDFuncionario) references tb_funcionario(IDFuncionario);
