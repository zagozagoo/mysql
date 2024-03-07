create database db_oficina;
use db_oficina;

create table tb_cliente (
	IDCliente int not null primary key auto_increment,
	Nome varchar(255) not null,
    Endereco varchar(60),
	Telefone char(11)
	)default charset utf8;

create table tb_mecanico (
	IDMecanico int not null primary key auto_increment,
	Nome varchar(255) not null
)default charset utf8;

create table tb_veiculo (
	IDVeiculo int not null primary key auto_increment,
	Marca varchar(60),
    Modelo varchar(60),
    Ano year,
    Placa char(7)
)default charset utf8;

create table tb_servico (
	IDServico int not null primary key auto_increment,
    Preco float,
    Descricao varchar(255)
);

create table tb_ordem (
	IDOrdem int not null primary key auto_increment,
    IDVeiculo int not null,
    IDServico int not null,
    IDmecanico int not null,
    DataInicial date,
    DataFinal date,
    Item varchar(80),
    Observacoes varchar (255),
    Status varchar(100),
    foreign key(IDVeiculo) references tb_veiculo(IDVeiculo),
    foreign key(IDServico) references tb_servico(IDServico),
    foreign key(IDmecanico) references tb_mecanico(IDmecanico)
);
