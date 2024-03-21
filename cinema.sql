create database db_cinema;
use db_cinema;

create table tb_estudio (
    IDEstudio int not null primary key,
    Nome varchar(45) not null,
    Proprietario varchar(45) not null,
    FaturamentoAnoAnterior decimal(10,2) not null,
    DataFundacao date not null
) default charset utf8;�

create table tb_filmes (
    IDFilme int not null primary key,
    Meses int not null,
    Nome varchar(45) not null,
    AnoLancamento year not null,
    CustoTotal decimal(10,2) not null,
    IDEstudio int not null,
    foreign key (IDEstudio) references tb_estudio (IDEstudio)
) default charset utf8;

create table tb_atores (
    IDAtor int not null primary key,
    Nome varchar(45) not null,
    Nacionalidade varchar(45) not null,
    Idade int not null,
    Sexo char(1) not null
) default charset utf8;

create table tb_papel (
    IDPapel int not null primary key,
    CacheAtor decimal(10,2) not null,
    Personagem varchar(45) not null,
    IDAtor int not null,
    IDFilme int not null,
    foreign key (IDAtor) references tb_atores (IDAtor),
    foreign key (IDFilme) references tb_filmes (IDFilme)
) default charset utf8;
